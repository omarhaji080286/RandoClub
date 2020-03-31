import 'package:randoclub/database/randoclub_database.dart';

enum EventType{firstLoad}

class HikesEvent {

  EventType eventType;
  List<Hike> hikes;

  HikesEvent.load(List<Hike> hikes){
    this.eventType = EventType.firstLoad;
    this.hikes = hikes;
  }

}