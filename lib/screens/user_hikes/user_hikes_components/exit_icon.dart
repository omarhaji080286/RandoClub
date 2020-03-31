import 'package:flutter/material.dart';
import 'package:randoclub/screens/register/register.dart';
import 'package:randoclub/services/google_auth_service.dart';

class ExitIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.exit_to_app,
        color: Colors.white,
      ),
      onPressed: () {
        _logOut(context);
      },
    );
  }

  Future<void> _logOut(BuildContext context) async {
    GoogleAuthService googleAuthService = GoogleAuthService();
    await googleAuthService.googleSignOut();

    Navigator.pushReplacement(
        context, new MaterialPageRoute(builder: (context) => new Register()));
  }

}
