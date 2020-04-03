import 'package:flutter/material.dart';

class ParticipantButton extends StatefulWidget {
  @override
  _ParticipantButtonState createState() => _ParticipantButtonState();
}

class _ParticipantButtonState extends State<ParticipantButton> {
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
            'Non,\n je suis \n participant',
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
    print('ParticipantButton - user is a participant');
  }
}
