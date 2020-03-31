import 'package:randoclub/database/randoclub_database.dart';

enum EventType{add}

class RegisterEvent {

  User user;
  EventType eventType;

  RegisterEvent.add(User user){
    this.eventType = EventType.add;
    this.user = user;
  }

}