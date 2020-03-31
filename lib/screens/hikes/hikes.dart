import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:randoclub/database/models/expanded_hike.dart';
import 'package:randoclub/database/randoclub_database.dart';

import 'hikes_components/hike_card.dart';

class Hikes extends StatefulWidget {
  @override
  _HikesState createState() => _HikesState();
}

class _HikesState extends State<Hikes> {
  HikeDao hikeDao;

  @override
  void initState() {
    super.initState();
    final RandoClubDataBase db = RandoClubDataBase.getInstance();
    this.hikeDao = HikeDao(db);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<Object>(
          stream: hikeDao.watchAllExpandedHikes(),
          builder: (context, snapshot) {
            List<ExpandedHike> hikes = snapshot.data;
            if (hikes != null) {
              return ListView.builder(
                  itemCount: hikes.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HikeCard(expHike: hikes[index], isHikeDetailsLinkActive: true);
                  });
            } else {
              return Center(
                child: SpinKitChasingDots(
                  color: Colors.green,
                  size: 100.0,
                ),
              );
            }
          }),
    );
  }
}
