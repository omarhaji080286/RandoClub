import 'package:flutter/material.dart';
import 'package:randoclub/database/randoclub_database.dart';
import 'package:randoclub/screens/hike_details/hike_details_components/good_to_know/good_to_know_components/equipment_widget.dart';
import 'package:randoclub/screens/hike_details/hike_details_components/good_to_know/good_to_know_components/meeting_point_widget.dart';

class GoodToKnow extends StatelessWidget {
  final Hike hike;

  const GoodToKnow({Key key, this.hike}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        EquipmentWidget(equipmentToDisplay: hike.equipment),
        SizedBox(height: 40),
        MeetingPointWidget(meetingPoint: hike.meetingPoint),
      ],
    );
  }
}
