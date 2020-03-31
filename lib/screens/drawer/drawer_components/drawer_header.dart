import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:randoclub/services/google_auth_service.dart';

class RandoClubDrawerHeader extends StatefulWidget {
  @override
  _RandoClubDrawerHeaderState createState() => _RandoClubDrawerHeaderState();
}

class _RandoClubDrawerHeaderState extends State<RandoClubDrawerHeader> {
  Future currentUser;

  @override
  void initState() {
    super.initState();
    currentUser = _getCurrentUser();
  }

  _getCurrentUser() async {
    GoogleAuthService _googleAuthService = GoogleAuthService();
    return await _googleAuthService.getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: currentUser,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            FirebaseUser currentUser = snapshot.data;
            print('DrawerHeader - currentUser : ' + currentUser.displayName);
            return buildDrawerHeader(currentUser);
            break;
          default:
            print('DrawerHeader - connectionstate : ' + snapshot.connectionState.toString());
            return DrawerHeader(
              child: Text('azeaze'),
            );
        }
      },
    );
  }

  buildDrawerHeader(FirebaseUser user) {
    return DrawerHeader(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage(user.photoUrl),
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                user.displayName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                user.email,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
