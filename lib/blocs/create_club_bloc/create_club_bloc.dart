import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randoclub/blocs/create_club_bloc/create_club_event.dart';
import 'package:randoclub/database/models/create_club_form.dart';
import 'package:randoclub/database/models/user_model.dart';
import 'package:randoclub/database/randoclub_database.dart';
import 'package:randoclub/services/chopper_services/randoclub_api_service.dart';
import 'package:randoclub/util/file_manager.dart';

class CreateClubBloc extends Bloc<CreateClubEvent, CreateClubForm> {
  @override
  CreateClubForm get initialState => CreateClubForm(
        clubName: 'name',
        contactEmail: 'email',
        contactPhone: 'phone',
      );

  @override
  Stream<CreateClubForm> mapEventToState(CreateClubEvent event) async* {
    User currentUser = await UserModel.getCurrentUser();

    switch (event.eventType) {
      case CreateClubEventType.createClubFormSubmitted:
        CreateClubForm createClubForm = state;
        if (event.createClubForm != null) {

          print("CreateClubBloc - logo : ${event.createClubForm.logo.lengthSync()}");

          try {
            Map jsonRequest = {
              'clubName': event.createClubForm.clubName,
              'contactName' : event.createClubForm.contactName,
              'contactPhone': event.createClubForm.contactPhone,
              'contactEmail': event.createClubForm.contactEmail,
              'logoString' : FileManager.imageToString(event.createClubForm.logo),
              'userId' : currentUser.userId
            };

            print("CreateClubBloc - jsonRequest : ${jsonRequest.toString()}");

            Map<String, dynamic> jsonResponse =
                (await RandoClubApiService.create()
                        .createClub(json.encode(jsonRequest)))
                    .body;

            print("CreateClubBloc - jsonResponse : ${jsonResponse.toString()}");


          } catch (e) {
            print("CreateClubBloc - Error creating club : ${e.toString()}");
          }
        }
        yield createClubForm;
        break;
      default:
        throw Exception('Event not found $event');
    }
  }



}
