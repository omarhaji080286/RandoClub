import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:randoclub/screens/create_club/create_club_components/club_logo_notification.dart';

class ClubLogoPicker extends StatefulWidget {
  @override
  _ClubLogoPickerState createState() => _ClubLogoPickerState();
}

class _ClubLogoPickerState extends State<ClubLogoPicker> {
  File _logo;
  int counter = 1;

  getImageFile(ImageSource source) async {
    counter++;
    var image = await ImagePicker.pickImage(source: source);
    File croppedFile = await ImageCropper.cropImage(
        sourcePath: image.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Ajustez votre logo',
            toolbarColor: Colors.green[700],
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          minimumAspectRatio: 1.0,
        ));

    final dir = await path_provider.getTemporaryDirectory();
    final targetPath = dir.absolute.path + "/temp$counter.jpg";

    final result = await FlutterImageCompress.compressAndGetFile(
      croppedFile.path,
      targetPath,
      quality: 90,
    );

    setState(() {
      _logo = result;
      ClubLogoNotification(logo: _logo).dispatch(context);
      print('ClubLogoPicker - Logo size : ${_logo.lengthSync()}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _logo == null ? _buildDefaultImage() : _buildLogoImage(),
    );
  }

//new CircleAvatar(backgroundImage: new FileImage(_image), radius: 200.0,)
  Widget _buildLogoImage() {
    return GestureDetector(
      onTap: () => getImageFile(ImageSource.gallery),
      child: CircleAvatar(
        backgroundImage: new FileImage(_logo),
        radius: 60.0,
      ),
    );
  }

  Widget _buildDefaultImage() {
    double size = 100;

    return GestureDetector(
      onTap: () => getImageFile(ImageSource.gallery),
      child: Container(
        alignment: Alignment.center,
        width: size,
        height: size,
        decoration: new BoxDecoration(
          color: Colors.grey[300],
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.photo_library),
            Text(
              'Logo',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
