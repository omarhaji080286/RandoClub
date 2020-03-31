import 'package:flutter/material.dart';
import 'package:randoclub/database/models/expanded_hike.dart';
import 'package:randoclub/screens/hike_details/hike_details_components/hike_card_in_details.dart';
import 'package:randoclub/screens/hike_details/hike_details_components/hikes_details_tabs.dart';

class HikeDetails extends StatefulWidget {
  final ExpandedHike expHike;

  const HikeDetails({Key key, this.expHike}) : super(key: key);

  @override
  _HikeDetailsState createState() => _HikeDetailsState();
}

class _HikeDetailsState extends State<HikeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.expHike.hike.description),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
                flex: 3,
                child: HikeCardInDetails(
                    expHike: widget.expHike, isHikeDetailsLinkActive: false)),
            Flexible(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: HikeDetailsTabs(expHike: widget.expHike),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
