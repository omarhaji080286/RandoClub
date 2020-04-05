import 'package:randoclub/database/models/club_contact_model.dart';

class ClubModel {
  int clubId;
  String clubName;
  String desc;
  String logoUrl;
  String clubEmail;
  String website;
  int userId;
  int cityId;

  ClubContactModel contact;

  ClubModel({this.clubName, this.contact});

}
