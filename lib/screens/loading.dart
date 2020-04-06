import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:randoclub/screens/register/register.dart';
import 'package:randoclub/services/google_auth_service.dart';

import 'drawer/screen_container.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    super.initState();
    _completeLoading();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 100.0,
        ),
      )
    );
  }

  Future<void> _completeLoading() async {

    GoogleAuthService googleAuthService = GoogleAuthService();
    FirebaseUser _user = await googleAuthService.getCurrentUser();

    if (_user == null){
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => new Register()));
    } else {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => new ScreenContainer()));
      //Navigator.pushReplacement(
          //context, new MaterialPageRoute(builder: (context) => new CreateClub()));
    }

  }


}
