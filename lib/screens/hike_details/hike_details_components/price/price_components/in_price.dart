import 'package:flutter/material.dart';
import 'package:randoclub/database/randoclub_database.dart';

class InPrice extends StatelessWidget {
  const InPrice({
    Key key,
    @required this.price,
  }) : super(key: key);

  final Price price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Prix indiqué comprend : ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          price.includedInPrice,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          'Prix indiqué ne comprend pas : ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          price.notIncludedInPrice,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
