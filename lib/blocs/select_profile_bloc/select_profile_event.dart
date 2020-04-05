
import 'package:randoclub/database/randoclub_database.dart';

enum EventType{participantSelected}

class SelectProfileEvent {

  User user;
  EventType eventType;

  SelectProfileEvent.participantSelected(User user){
    this.eventType = EventType.participantSelected;
    this.user = user;
  }

}