import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randoclub/blocs/select_profile_bloc/select_profile_bloc.dart';
import 'package:randoclub/database/randoclub_database.dart';
import 'package:randoclub/util/constants.dart';
import 'package:randoclub/widgets/badge_icon.dart';
import 'package:randoclub/widgets/dot.dart';

import 'select_profile_components/organizer_btn.dart';
import 'select_profile_components/participant_btn.dart';

class SelectProfile extends StatefulWidget {
  final User user;

  const SelectProfile({Key key, this.user}) : super(key: key);

  @override
  _SelectProfileState createState() => _SelectProfileState();
}

class _SelectProfileState extends State<SelectProfile> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SelectProfileBloc>(
      create: (context)=> SelectProfileBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Selection du profil'),
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
      ),
    );
  }

  Widget _buildUserInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(widget.user.imageUrl),
            backgroundColor: Colors.transparent,
          ),
        ),
        SizedBox(width: 8),
        Text(
          'Bienvenue ${widget.user.name}',
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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: <Widget>[
            BadgeIcon(
              iconUrl: '${Constants.APP_IMGS}/icons/organizer.png',
              height: 60,
              width: 60,
            ),
            SizedBox(height: 10),
            OrganizerButton(user : widget.user),
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
            ParticipantButton(user : widget.user),
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
      ],
    );
  }
}
