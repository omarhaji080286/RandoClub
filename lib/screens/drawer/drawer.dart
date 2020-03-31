import 'package:flutter/material.dart';
import 'package:randoclub/screens/drawer/drawer_components/drawer_header.dart';
import 'package:randoclub/screens/register/register.dart';
import 'package:randoclub/services/google_auth_service.dart';

class RandoClubDrawer extends StatelessWidget {

  final Function onTap;

  const RandoClubDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          RandoClubDrawerHeader(),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text('Les randos du moment'),
            onTap: () => onTap(context,0),
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Organiser des randos'),
            onTap: () => onTap(context,1),
          ),
          ListTile(
            leading: Icon(Icons.group_work),
            title: Text('Mes participations'),
            onTap: () => onTap(context,2),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Log out'),
            onTap: () {
              _logOut(context);
            },
          ),
        ],
      ),
    );
  }

  Future<void> _logOut(BuildContext context) async {
    GoogleAuthService googleAuthService = GoogleAuthService();
    await googleAuthService.googleSignOut();

    Navigator.pushReplacement(
        context, new MaterialPageRoute(builder: (context) => new Register()));
  }


}
