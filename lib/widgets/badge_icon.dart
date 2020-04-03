import 'package:flutter/material.dart';

class BadgeIcon extends StatelessWidget {

  final String iconUrl;
  final double height;
  final double width;

  const BadgeIcon({Key key, this.iconUrl, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      placeholder: 'assets/loading.gif',
      image: iconUrl,
      fadeInDuration: Duration(milliseconds: 500),
      fadeInCurve: Curves.linear,
      fit: BoxFit.fill,
      height: height,
      width: width,
    );
  }
}
