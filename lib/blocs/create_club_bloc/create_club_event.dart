import 'package:randoclub/database/models/create_club_form.dart';

enum CreateClubEventType{createClubFormSubmitted}

class CreateClubEvent {

  CreateClubEventType eventType;
  CreateClubForm createClubForm;

  CreateClubEvent.createClubFormSubmitted(CreateClubForm createClubForm){
    this.eventType = CreateClubEventType.createClubFormSubmitted;
    this.createClubForm = createClubForm;
  }

}