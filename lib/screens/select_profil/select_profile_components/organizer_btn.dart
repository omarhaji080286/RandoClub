import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrganizerButton extends StatefulWidget {
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
    print('OrganizerButton - user is an Organizer');
  }
}
