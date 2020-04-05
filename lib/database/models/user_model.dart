import 'package:firebase_auth/firebase_auth.dart';
import 'package:randoclub/services/google_auth_service.dart';

import '../randoclub_database.dart';

class UserModel {

  static const int ORGANIZER = 1;
  static const int PARTICIPANT = 2;
  static const int ADMIN = 3;

  static Future<User> getCurrentUser() async {
    final db = RandoClubDataBase.getInstance();
    UserDao userDao = UserDao(db);

    FirebaseUser firebaseUser = await GoogleAuthService().getCurrentUser();
    return await userDao.getUserByEmail(firebaseUser.email);
  }

}