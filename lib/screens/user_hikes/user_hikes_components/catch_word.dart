import 'package:flutter/material.dart';

class CatchWord extends StatelessWidget {
  const CatchWord({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          Icons.landscape,
          color: Colors.green,
          size: 70,
        ),
        Text(
          'RandoClub',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
            letterSpacing: 1.5,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'La nature nous rend heureux...',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
