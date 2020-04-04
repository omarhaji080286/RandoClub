import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:randoclub/blocs/register_bloc/register_bloc.dart';
import 'package:randoclub/blocs/register_bloc/register_event.dart';
import 'package:randoclub/database/randoclub_database.dart';
import 'package:randoclub/screens/select_profile/select_profile.dart';
import 'package:randoclub/services/connectivity_service.dart';
import 'package:randoclub/services/google_auth_service.dart';

class GoogleSignInButton extends StatefulWidget {
  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  GoogleAuthService _googleAuthService = GoogleAuthService();

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 300,
      height: 55,
      child: FlatButton(
          child: Text(
            'Sign Up with Google',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          color: Colors.red[600],
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
          onPressed: () async {
            if (await ConnectivityService.isConnected()) {
              _registerUser(context);
            } else {
              ConnectivityService.showMessage();
            }
          }),
    );
  }

  Future<void> _registerUser(BuildContext context) async {
    FirebaseUser _user = await _googleAuthService.googleRegisterUser(context);

    if (_user != null) {
      User user = fireBaseUserToRandoClubUser(_user);

      BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.add(user));

      Navigator.pushReplacement(context,
          new MaterialPageRoute(builder: (context) => new SelectProfile(user : user)));

      Fluttertoast.showToast(
          msg: 'Welcome to RandoClub', toastLength: Toast.LENGTH_SHORT);
    } else {
      Fluttertoast.showToast(
          msg: 'Sign in failed. Please try again.',
          toastLength: Toast.LENGTH_SHORT);
    }
  }

  User fireBaseUserToRandoClubUser(FirebaseUser fireBaseUser) {
    return User(
      userId: 0,
      name: fireBaseUser.displayName,
      email: fireBaseUser.email,
      imageUrl: fireBaseUser.photoUrl,
      firebaseId: fireBaseUser.uid,
      registrationTime: DateFormat('yyyy-MM-dd kk:mm').format(DateTime.now()),
      userTypeId: 1 // by default the user is an organizer
    );
  }
}
