import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randoclub/database/randoclub_database.dart';

import 'hikes_event.dart';

class HikesBloc extends Bloc<HikesEvent, List<Hike>> {
  @override
  List<Hike> get initialState => new List<Hike>();

  @override
  Stream<List<Hike> > mapEventToState(HikesEvent event) async* {
    switch (event.eventType) {
      case EventType.firstLoad:
        List<Hike> hikes = List.from(state);

        RandoClubDataBase db = RandoClubDataBase.getInstance();
        HikeDao hikeDao = HikeDao(db);

        hikes.add(await hikeDao.getHike(1));

        hikes.forEach((element) {
          print("HikesBloc - hike description : " + element.description);
        });

        yield hikes;
        break;
      default:
        throw Exception('Event not found $event');
    }
  }


}
