import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randoclub/blocs/select_profile_bloc/select_profile_event.dart';
import 'package:randoclub/database/models/user_model.dart';
import 'package:randoclub/database/randoclub_database.dart';
import 'package:randoclub/services/chopper_services/randoclub_api_service.dart';

class SelectProfileBloc extends Bloc<SelectProfileEvent, User> {
  @override
  User get initialState => User(
        userTypeId: 0,
        email: null,
        userId: 0,
        name: null,
        registrationTime: null,
        firebaseId: null,
      );

  @override
  Stream<User> mapEventToState(SelectProfileEvent event) async* {

    final db = RandoClubDataBase.getInstance();
    UserDao userDao = UserDao(db);

    switch (event.eventType) {
      case EventType.participantSelected:
        User user = state;
        if (event.user != null) {
          //insert user via chopper
          try {
            user = (await userDao.getUserByEmail(event.user.email)).copyWith(userTypeId: UserModel.PARTICIPANT);
            Map jsonRequest = user.toJson();
            print("SelectProfileBloc - jsonRequest : " + jsonRequest.toString());
            Map<String, dynamic> jsonResponse =
                (await RandoClubApiService.create()
                        .updateUser(json.encode(jsonRequest)))
                    .body;
            print("SelectProfileBloc - jsonResponse : " + jsonResponse.toString());
            userDao.replace(user);
          } catch (e) {
            print("SelectProfileBloc - Error updating user : " + e.toString());
          }
        }
        yield user;
        break;
      default:
        throw Exception('Event not found $event');
    }
  }

}
