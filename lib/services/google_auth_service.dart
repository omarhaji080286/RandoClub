import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:progress_dialog/progress_dialog.dart';

class GoogleAuthService {
  static const String TAG = 'GoogleAuthService';

  final FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn;

  GoogleAuthService() {
    this._googleSignIn = new GoogleSignIn();
  }

  Future<FirebaseUser> googleRegisterUser(BuildContext context) async {
    ProgressDialog pr;
    pr = new ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: false, showLogs: false);
    pr.style(
      message: 'Signing in...',
      progressWidget: SpinKitFadingCube(color: Colors.green[800]),
    );

    try {
      GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      AuthCredential credential = GoogleAuthProvider.getCredential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      pr.show();
      AuthResult result = (await _auth.signInWithCredential(credential));
      pr.hide();

      print(
          TAG + ' - Sign in succeded - user name : ' + result.user.displayName);

      return result.user;
    } catch (e) {
      print(TAG + ' - Sign in failed : ' + e.toString());
      return null;
    }
  }

  Future<void> googleSignOut() async {
    try {
      await _auth.signOut().then((value) {
        _googleSignIn.signOut();
      });
    } catch (e) {
      print(TAG + " - Error googleSignOut : " + e.toString());
    }
  }

  Future<FirebaseUser> getCurrentUser() async {
    FirebaseUser _user;
    try {
      _user = await FirebaseAuth.instance.currentUser();
      if (_user == null) return null;
      print(TAG + " - User: ${_user.displayName ?? "None"}");
      return _user;
    } catch (e) {
      print(TAG + " - Error getCurrentUser : " + e.toString());
      return null;
    }
  }
}
