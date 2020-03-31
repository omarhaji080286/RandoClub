import 'package:flutter/material.dart';
import 'package:randoclub/util/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class MeetingPointWidget extends StatelessWidget {

  final String meetingPoint;

  const MeetingPointWidget({Key key, this.meetingPoint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _openMap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FadeInImage.assetNetwork(
                placeholder: 'assets/loading.gif',
                image:
                '${Constants.APP_IMGS}/icons/meeting_point.png',
                fadeInDuration: Duration(milliseconds: 500),
                fadeInCurve: Curves.linear,
                fit: BoxFit.fill,
                height: 60.0,
                width: 60.0,
              ),
              Text('point de rencontre'),
            ],
          ),
          SizedBox(width: 30.0),
          Text(meetingPoint),
        ],
      ),
    );
  }

  _openMap() async {
    String url = 'https://www.google.com/maps/search/?api=1&query='+meetingPoint;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}
