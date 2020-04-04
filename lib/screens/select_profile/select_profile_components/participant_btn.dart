import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randoclub/blocs/select_profile_bloc/select_profile_bloc.dart';
import 'package:randoclub/blocs/select_profile_bloc/select_profile_event.dart';
import 'package:randoclub/database/randoclub_database.dart';
import 'package:randoclub/screens/drawer/screen_container.dart';

class ParticipantButton extends StatefulWidget {
  final User user;

  const ParticipantButton({Key key, this.user}) : super(key: key);

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
    BlocProvider.of<SelectProfileBloc>(context).add(SelectProfileEvent.participantSelected(widget.user));
    Navigator.pushReplacement(context,
        new MaterialPageRoute(builder: (context) => new ScreenContainer()));
  }
}
