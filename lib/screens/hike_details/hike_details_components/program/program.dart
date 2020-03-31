import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:randoclub/database/randoclub_database.dart';
import 'package:randoclub/screens/hike_details/hike_details_components/program/program_components/day_tile.dart';

class Program extends StatefulWidget {
  final int hikeId;

  const Program({Key key, this.hikeId}) : super(key: key);

  @override
  _ProgramState createState() => _ProgramState();
}

class _ProgramState extends State<Program> {

  DayDao dayDao;

  @override
  void initState() {
    super.initState();
    final RandoClubDataBase db = RandoClubDataBase.getInstance();
    this.dayDao = DayDao(db);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<Object>(
          stream: dayDao.watchDays(widget.hikeId),
          builder: (context, snapshot) {
            List<Day> days = snapshot.data;
            if (days != null) {
              return ListView.builder(
                  itemCount: days.length,
                  itemBuilder: (BuildContext context, int index) {
                    return DayTile(day: days[index]);
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
