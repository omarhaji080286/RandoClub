import 'package:flutter/material.dart';
import 'package:randoclub/database/randoclub_database.dart';
import 'package:randoclub/util/TimeHandler.dart';

class DayTile extends StatefulWidget {
  final Day day;

  const DayTile({Key key, this.day}) : super(key: key);

  @override
  _DayTileState createState() => _DayTileState();
}

class _DayTileState extends State<DayTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getDate(),
          SizedBox(height: 4.0),
          getProgram(),
        ],
      ),
    );
  }

  Widget getDate() {
    TimeHandler timeHandler = TimeHandler(widget.day.day);
    String displayDate =
        timeHandler.getDay() + " " + timeHandler.getMonthInLetter();
    return Text(
      displayDate,
      style :  TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ));
  }

  Widget getProgram(){
    return Text(
        widget.day.program,
        style :  TextStyle(
          fontSize: 14,
        ));
  }
}
