import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:randoclub/util/constants.dart';
import 'package:randoclub/widgets/badge_icon.dart';
import 'package:randoclub/widgets/dot.dart';

import 'select_profile_components/organizer_btn.dart';
import 'select_profile_components/participant_btn.dart';

class SelectProfile extends StatefulWidget {
  final FirebaseUser user;

  const SelectProfile({Key key, this.user}) : super(key: key);

  @override
  _SelectProfileState createState() => _SelectProfileState();
}

class _SelectProfileState extends State<SelectProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select your profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 8),
          _buildUserInfo(),
          SizedBox(height: 8),
          _buildQuestion(),
          SizedBox(height: 8),
          _buildButtons(),
          SizedBox(height: 8),
          _buildDots(15),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(widget.user.photoUrl),
            backgroundColor: Colors.transparent,
          ),
        ),
        SizedBox(width: 8),
        Text(
          'Bienvenue ${widget.user.displayName}',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildQuestion() {
    return Text(
      'Êtes-vous Organisateur de randonnées ?',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            BadgeIcon(
              iconUrl: '${Constants.APP_IMGS}/icons/organizer.png',
              height: 60,
              width: 60,
            ),
            SizedBox(height: 10),
            OrganizerButton(),
          ],
        ),
        Column(
          children: <Widget>[
            BadgeIcon(
              iconUrl: '${Constants.APP_IMGS}/icons/participant.png',
              height: 60,
              width: 60,
            ),
            SizedBox(height: 10),
            ParticipantButton(),
          ],
        ),
      ],
    );
  }

  Widget _buildDots(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Dot(size: size, color: Colors.green[700]),
        SizedBox(width: 8),
        Dot(size: size, color: Colors.grey[400]),
        SizedBox(width: 8),
        Dot(size: size, color: Colors.grey[400]),
        /*SizedBox(width: 4),
        Text('azeaze', style: TextStyle(color: Colors.black),),*/
      ],
    );
  }
}
