import 'package:flutter/material.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      headline6: base.headline6.copyWith(
        fontFamily: 'PTSerif',
        fontSize: 22.0,
        color: Colors.black,
      ),
      headline5: base.headline5.copyWith(
        fontFamily: 'PTSerif',
        fontSize: 18.0,
        color: Colors.black,
      ),
      headline4: base.headline4.copyWith(
        fontFamily: 'PTSerif',
        fontSize: 16.0,
        color: Colors.white,
      ),
      caption: base.caption.copyWith(
        fontFamily: 'PTSerif',
        fontSize: 12.0,
        color: Colors.grey,
      ),
    );
  }

  final ThemeData base = ThemeData.light();

  final Color myPrimaryColor = Colors.green[700];

  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: myPrimaryColor,
    iconTheme: IconThemeData(
      color: myPrimaryColor,
      size: 24.0,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: myPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      textTheme: ButtonTextTheme.normal,
    ),
  );
}
