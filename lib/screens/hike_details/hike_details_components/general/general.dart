import 'package:flutter/material.dart';
import 'package:randoclub/database/models/expanded_hike.dart';
import 'package:randoclub/screens/hike_details/hike_details_components/general/general_components/badge_icon.dart';
import 'package:randoclub/util/TimeHandler.dart';
import 'package:randoclub/util/constants.dart';

class General extends StatefulWidget {
  final ExpandedHike expHike;

  const General({Key key, this.expHike}) : super(key: key);

  @override
  _GeneralState createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  final double iconDim = 40.0;
  final double textDim = 80.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BadgeIcon(
                iconUrl: Constants.APP_IMGS + '/icons/calendar.png',
                height: iconDim,
                width: iconDim,
              ),
              Container(
                alignment: Alignment.center,
                width: textDim,
                child: Text(
                  getPeriod(),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: 8.0),
              BadgeIcon(
                iconUrl: Constants.APP_IMGS + '/icons/minibus.png',
                height: iconDim,
                width: iconDim,
              ),
              Container(
                alignment: Alignment.center,
                width: textDim,
                child: Text(
                  widget.expHike.hike.transport,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BadgeIcon(
                iconUrl: Constants.APP_IMGS + '/icons/localisation.png',
                height: iconDim,
                width: iconDim,
              ),
              Container(
                alignment: Alignment.center,
                width: textDim,
                child: Text(
                  widget.expHike.region.regionName,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: 8.0),
              BadgeIcon(
                iconUrl: Constants.APP_IMGS + '/icons/food.png',
                height: iconDim,
                width: iconDim,
              ),
              Container(
                alignment: Alignment.center,
                width: textDim,
                child: Text(
                  widget.expHike.hike.feeding,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BadgeIcon(
                iconUrl: Constants.APP_IMGS + '/icons/hiker.png',
                height: iconDim,
                width: iconDim,
              ),
              Container(
                alignment: Alignment.center,
                width: textDim,
                child: Text(
                  widget.expHike.hike.maxParticipants.toString() +
                      ' participants',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: 8.0),
              BadgeIcon(
                iconUrl: Constants.APP_IMGS + '/icons/difficulty.png',
                height: iconDim,
                width: iconDim,
              ),
              Container(
                alignment: Alignment.center,
                width: textDim,
                child: getDifficultyIcon(widget.expHike.hike.difficulty),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String getPeriod() {
    String period;
    TimeHandler startDay = TimeHandler(widget.expHike.hike.startDay);
    TimeHandler endDay = TimeHandler(widget.expHike.hike.endDay);

    if (startDay.getMonth().compareTo(endDay.getMonth()) == 0) {
      period = "du " +
          startDay.getDay() +
          " au " +
          endDay.getDay() +
          " " +
          endDay.getMonthInLetter();
    } else {
      period = "du " +
          startDay.getDay() +
          " " +
          startDay.getMonthInLetter() +
          " au " +
          endDay.getDay() +
          " " +
          endDay.getMonthInLetter();
    }

    return period;
  }

  Widget getDifficultyIcon(int difficulty) {
    final double barWidth = 8.0;
    final double barHeight = 4.0 * 4;
    final double diff = 6.0;
    final double space = 6.0;

    Color dif1 = Colors.green;
    Color dif2 = Colors.green;
    Color dif3 = Colors.green;
    Color dif4 = Colors.green;

    switch (difficulty) {
      case 1:
        dif1 = Colors.green;
        dif2 = Colors.grey;
        dif3 = Colors.grey;
        dif4 = Colors.grey;
        break;
      case 2:
        dif1 = Colors.green;
        dif2 = Colors.green;
        dif3 = Colors.grey;
        dif4 = Colors.grey;
        break;
      case 3:
        dif1 = Colors.green;
        dif2 = Colors.green;
        dif3 = Colors.orange;
        dif4 = Colors.grey;
        break;
      case 4:
        dif1 = Colors.green;
        dif2 = Colors.green;
        dif3 = Colors.orange;
        dif4 = Colors.red;
        break;
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            height: barHeight,
            width: barWidth,
            color: dif1,
          ),
          SizedBox(
            width: space,
          ),
          Container(
            height: barHeight + 2 * diff,
            width: barWidth,
            color: dif2,
          ),
          SizedBox(
            width: space,
          ),
          Container(
            height: barHeight + 3 * diff,
            width: barWidth,
            color: dif3,
          ),
          SizedBox(
            width: space,
          ),
          Container(
            height: barHeight + 4 * diff,
            width: barWidth,
            color: dif4,
          ),
        ]);
  }
}
