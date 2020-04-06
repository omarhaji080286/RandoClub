import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:randoclub/database/randoclub_database.dart';
import 'package:randoclub/screens/create_club/create_club.dart';

class OrganizerButton extends StatefulWidget {
  final User user;

  const OrganizerButton({Key key, this.user}) : super(key: key);

  @override
  _OrganizerButtonState createState() => _OrganizerButtonState();
}

class _OrganizerButtonState extends State<OrganizerButton> {
  @override
  Widget build(BuildContext context) {

    double buttonSize = 150;

    return ButtonTheme(
      height: buttonSize,
      minWidth: buttonSize,
      buttonColor: Colors.green[700],
      child: RaisedButton(
        elevation: 8.0,
        onPressed: redirectUser,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            'Oui,\n je suis \n organisateur',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  void redirectUser() {
    Navigator.pushReplacement(context,
        new MaterialPageRoute(builder: (context) => new CreateClub(user: widget.user)));
  }
}
