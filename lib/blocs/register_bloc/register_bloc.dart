import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randoclub/blocs/register_bloc/register_event.dart';
import 'package:randoclub/database/randoclub_database.dart';
import 'package:randoclub/services/chopper_services/randoclub_api_service.dart';

class RegisterBloc extends Bloc<RegisterEvent, User> {
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
  Stream<User> mapEventToState(RegisterEvent event) async* {
    switch (event.eventType) {
      case EventType.add:
        User user = state;

        if (event.user != null) {
          //insert user via chopper
          try {
            Map jsonRequest = event.user.toJson();
            Map<String, dynamic> jsonResponse =
                (await RandoClubApiService.create().addUser(json.encode(jsonRequest)))
                    .body;

            user = User.fromJson(jsonResponse).copyWith(
                imageUrl: event.user.imageUrl,
                name: event.user.name
            );

            addUserToLocalDataBase(user);

          } catch (e) {
            print("RegisterBloc - Error inserting user : " + e.toString());
          }
        }
        yield user;
        break;
      default:
        throw Exception('Event not found $event');
    }
  }

  void addUserToLocalDataBase(User user) async {
    final db = RandoClubDataBase.getInstance();
    UserDao dao = UserDao(db);

    User userInDB = await dao.getUserByEmail(user.email);
    if (userInDB == null) {
      //insert if user does not exist in local DB
      dao.insert(user);
    } else {
      //update if user exists in local DB
      dao.replace(user);
    }
  }



}
