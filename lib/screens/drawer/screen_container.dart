import 'package:flutter/material.dart';
import 'package:randoclub/screens/hikes/hikes.dart';
import 'package:randoclub/screens/manage_hikes/manage_hikes.dart';
import 'package:randoclub/screens/user_hikes/user_hikes.dart';

import 'drawer.dart';

class ScreenContainer extends StatefulWidget {
  @override
  _ScreenContainerState createState() => _ScreenContainerState();
}

class _ScreenContainerState extends State<ScreenContainer> {
  int index = 0;
  List<String> titles = [
    'Les randonnées du moment',
    'Organiser des randos',
    'Mes participations',
  ];
  List<Widget> screens = [
    Hikes(),
    ManageHikes(),
    UserHikes(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[index]),
        //backgroundColor: Colors.green[700],
      ),
      drawer: RandoClubDrawer(onTap: (context, i) {
        setState(() {
          index = i;
          Navigator.pop(context);
        });
      }),
      body: screens[index],
    );
  }
}
