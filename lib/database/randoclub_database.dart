import 'dart:io';

import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:randoclub/database/models/expanded_hike.dart';

import 'models/pricing_item.dart';

part 'randoclub_database.g.dart';

///************************ RandoClub DataBase ******************************************///

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'randoclub_db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [
  Users,
  Countries,
  Regions,
  Cities,
  UserTypes,
  Clubs,
  HikeStatuses,
  Hikes,
  Days,
  Prices,
  SelectedPriceCategories,
  PriceCategories,
  ClubContacts,
], daos: [
  UserDao,
  CountryDao,
  RegionDao,
  CityDao,
  UserTypeDao,
  ClubDao,
  HikeStatusDao,
  HikeDao,
  DayDao,
  PriceDao,
  SelectedPriceCategoryDao,
  PriceCategoryDao,
  ClubContactDao,
])
class RandoClubDataBase extends _$RandoClubDataBase {
  static RandoClubDataBase instance;

  static getInstance() {
    if (instance == null) {
      instance = new RandoClubDataBase();
    }
    return instance;
  }

  RandoClubDataBase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

///************************ Country table & Dao ******************************************///

@DataClassName("Country")
class Countries extends Table {
  IntColumn get countryId => integer()();

  TextColumn get name => text()();

  @override
  Set<Column> get primaryKey => {countryId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [Countries])
class CountryDao extends DatabaseAccessor<RandoClubDataBase>
    with _$CountryDaoMixin {
  final RandoClubDataBase db;

  CountryDao(this.db) : super(db);

  Stream<List<Country>> watchAllCountries() => (select(countries)).watch();

  Future<int> insert(Insertable<Country> country) =>
      into(countries).insert(country);

  Future replace(Insertable<Country> country) =>
      update(countries).replace(country);

  Future<Country> getCountry(int countryId) {
    return (select(countries)
      ..where((tbl) => tbl.countryId.equals(countryId)))
        .getSingle();
  }
}

///************************ Region table & Dao ******************************************///

@DataClassName("Region")
class Regions extends Table {
  IntColumn get regionId => integer()();

  TextColumn get regionName => text()();

  IntColumn get countryId => integer()();

  @override
  Set<Column> get primaryKey => {regionId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [Regions])
class RegionDao extends DatabaseAccessor<RandoClubDataBase>
    with _$RegionDaoMixin {
  final RandoClubDataBase db;

  RegionDao(this.db) : super(db);

  Stream<List<Region>> watchAllRegions() => (select(regions)).watch();

  Future<int> insert(Insertable<Region> region) => into(regions).insert(region);

  Future replace(Insertable<Region> region) => update(regions).replace(region);

  Future<Region> getRegion(int regionId) {
    return (select(regions)
      ..where((tbl) => tbl.regionId.equals(regionId)))
        .getSingle();
  }
}

///************************ City table & Dao ******************************************///

@DataClassName("City")
class Cities extends Table {
  IntColumn get cityId => integer()();

  TextColumn get name => text()();

  IntColumn get regionId => integer()();

  @override
  Set<Column> get primaryKey => {cityId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [Cities])
class CityDao extends DatabaseAccessor<RandoClubDataBase> with _$CityDaoMixin {
  final RandoClubDataBase db;

  CityDao(this.db) : super(db);

  Stream<List<City>> watchAllCities() => (select(cities)).watch();

  Future<int> insert(Insertable<City> city) => into(cities).insert(city);

  Future replace(Insertable<City> city) => update(cities).replace(city);

  Future<City> getCity(int cityId) {
    return (select(cities)
      ..where((tbl) => tbl.cityId.equals(cityId)))
        .getSingle();
  }
}

///************************ UserType table & Dao ******************************************///

@DataClassName("UserType")
class UserTypes extends Table {
  IntColumn get userTypeId => integer()();

  TextColumn get name => text()();

  @override
  Set<Column> get primaryKey => {userTypeId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [UserTypes])
class UserTypeDao extends DatabaseAccessor<RandoClubDataBase>
    with _$UserTypeDaoMixin {
  final RandoClubDataBase db;

  UserTypeDao(this.db) : super(db);

  Stream<List<UserType>> watchAllUserTypes() => (select(userTypes)).watch();

  Future<int> insert(Insertable<UserType> userType) =>
      into(userTypes).insert(userType);

  Future replace(Insertable<UserType> userType) =>
      update(userTypes).replace(userType);

  Future<UserType> getUserType(int userTypeId) {
    return (select(userTypes)
      ..where((tbl) => tbl.userTypeId.equals(userTypeId)))
        .getSingle();
  }
}

///************************ User table & Dao ******************************************///

@DataClassName("User")
class Users extends Table {
  IntColumn get userId => integer()();

  TextColumn get name => text()();

  TextColumn get email => text()();

  TextColumn get imageUrl => text().nullable()();

  TextColumn get firebaseId => text()();

  TextColumn get registrationTime => text()();

  IntColumn get age => integer().nullable()();

  TextColumn get gender => text().nullable()();

  IntColumn get userTypeId => integer()();

  @override
  Set<Column> get primaryKey => {userId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [Users])
class UserDao extends DatabaseAccessor<RandoClubDataBase> with _$UserDaoMixin {
  final RandoClubDataBase db;

  UserDao(this.db) : super(db);

  Stream<List<User>> watchAllUsers() => (select(users)).watch();

  Future<int> insert(Insertable<User> user) => into(users).insert(user);

  Future<User> getUserByEmail(String userEmail) {
    return (select(users)
      ..where((tbl) => tbl.email.equals(userEmail)))
        .getSingle();
  }

  Future<User> getUser(int userId) {
    return (select(users)
      ..where((tbl) => tbl.userId.equals(userId)))
        .getSingle();
  }

  Future replace(Insertable<User> user) => update(users).replace(user);
}

///************************ Clubs table & Dao ******************************************///

@DataClassName("Club")
class Clubs extends Table {
  IntColumn get clubId => integer()();

  TextColumn get clubName => text()();

  TextColumn get desc => text().nullable()();

  TextColumn get logoUrl => text()();

  TextColumn get clubEmail => text().nullable()();

  TextColumn get website => text().nullable()();

  IntColumn get userId => integer()();

  IntColumn get cityId => integer().nullable()();

  @override
  Set<Column> get primaryKey => {clubId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [Clubs])
class ClubDao extends DatabaseAccessor<RandoClubDataBase> with _$ClubDaoMixin {
  final RandoClubDataBase db;

  ClubDao(this.db) : super(db);

  Stream<List<Club>> watchAllClubs() => (select(clubs)).watch();

  Future<int> insert(Insertable<Club> club) => into(clubs).insert(club);

  Future replace(Insertable<Club> club) => update(clubs).replace(club);

  Future<Club> getClub(int clubId) {
    return (select(clubs)
      ..where((tbl) => tbl.clubId.equals(clubId)))
        .getSingle();
  }
}

///************************ ClubContacts table & Dao ******************************************///

@DataClassName("ClubContact")
class ClubContacts extends Table {
  IntColumn get contactId => integer()();

  TextColumn get contactName => text()();

  TextColumn get contactEmail => text()();

  TextColumn get contactPhone => text()();

  IntColumn get clubId => integer()();

  @override
  Set<Column> get primaryKey => {contactId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [ClubContacts])
class ClubContactDao extends DatabaseAccessor<RandoClubDataBase> with _$ClubContactDaoMixin {
  final RandoClubDataBase db;

  ClubContactDao(this.db) : super(db);

  Stream<List<ClubContact>> watchAllContacts() => (select(clubContacts)).watch();

  Future<int> insert(Insertable<ClubContact> clubContact) => into(clubContacts).insert(clubContact);

  Future replace(Insertable<ClubContact> clubContact) => update(clubContacts).replace(clubContact);

  Future<ClubContact> getClubContact(int contactId) {
    return (select(clubContacts)
      ..where((tbl) => tbl.contactId.equals(contactId)))
        .getSingle();
  }
}


///************************ HikeStatuses table & Dao ******************************************///

@DataClassName("HikeStatus")
class HikeStatuses extends Table {
  IntColumn get hikeStatusId => integer()();

  TextColumn get status => text()();

  @override
  Set<Column> get primaryKey =>
      {hikeStatusId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [HikeStatuses])
class HikeStatusDao extends DatabaseAccessor<RandoClubDataBase>
    with _$HikeStatusDaoMixin {
  final RandoClubDataBase db;

  HikeStatusDao(this.db) : super(db);

  Stream<List<HikeStatus>> watchAllHikeStatuses() =>
      (select(hikeStatuses)).watch();

  Future<int> insert(Insertable<HikeStatus> hikeStatus) =>
      into(hikeStatuses).insert(hikeStatus);

  Future replace(Insertable<HikeStatus> hikeStatus) =>
      update(hikeStatuses).replace(hikeStatus);

  Future<HikeStatus> getHikeStatus(int hikeStatusId) {
    return (select(hikeStatuses)
      ..where((tbl) => tbl.hikeStatusId.equals(hikeStatusId)))
        .getSingle();
  }
}

///************************ Hikes table & Dao ******************************************///

@DataClassName("Hike")
class Hikes extends Table {
  IntColumn get hikeId => integer()();

  TextColumn get description => text()();

  TextColumn get imageUrl => text()();

  TextColumn get location => text()();

  IntColumn get maxParticipants => integer()();

  IntColumn get difficulty => integer()();

  TextColumn get startDay => text()();

  TextColumn get endDay => text()();

  TextColumn get feeding => text()();

  TextColumn get transport => text()();

  IntColumn get clubId => integer()();

  IntColumn get regionId => integer()();

  IntColumn get hikeStatusId => integer()();

  TextColumn get creationDate => text()();

  TextColumn get publicationDate => text()();

  IntColumn get priceId => integer()();

  TextColumn get equipment => text()();

  TextColumn get meetingPoint => text()();

  @override
  Set<Column> get primaryKey => {hikeId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [Hikes])
class HikeDao extends DatabaseAccessor<RandoClubDataBase> with _$HikeDaoMixin {
  final RandoClubDataBase db;

  HikeDao(this.db) : super(db);

  Stream<List<Hike>> watchAllHikes() => (select(hikes)).watch();

  Future<List<Hike>> getAllHikes() => (select(hikes)).get();

  Future<int> insert(Insertable<Hike> hike) => into(hikes).insert(hike);

  Future replace(Insertable<Hike> hike) => update(hikes).replace(hike);

  Future<Hike> getHike(int hikeId) {
    return (select(hikes)
      ..where((tbl) => tbl.hikeId.equals(hikeId)))
        .getSingle();
  }

  //Select Query to return all the data relative to a hike
  Stream<List<ExpandedHike>> watchAllExpandedHikes() {
    String mQuery =
        'SELECT h.*, c.*, r.*  FROM hikes as h, clubs as c, regions as r' +
            ' WHERE c.club_id = h.club_id' +
            ' AND h.region_id = r.region_id';
    return customSelectQuery(mQuery,
        readsFrom: {db.hikes, db.clubs, db.regions}).watch().map((rows) {
      return rows
          .map((row) =>
          ExpandedHike(
            hike: Hike.fromData(row.data, db),
            club: Club.fromData(row.data, db),
            region: Region.fromData(row.data, db),
          ))
          .toList();
    });
  }
}

///************************ Days table & Dao ******************************************///

@DataClassName("Day")
class Days extends Table {
  IntColumn get dayId => integer()();

  TextColumn get day => text()();

  IntColumn get rank => integer()();

  TextColumn get program => text()();

  IntColumn get hikeId => integer()();

  @override
  Set<Column> get primaryKey => {dayId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [Days])
class DayDao extends DatabaseAccessor<RandoClubDataBase> with _$DayDaoMixin {
  final RandoClubDataBase db;

  DayDao(this.db) : super(db);

  Stream<List<Day>> watchAllDays() => (select(days)).watch();

  Future<int> insert(Insertable<Day> day) => into(days).insert(day);

  Future replace(Insertable<Day> day) => update(days).replace(day);

  Future<Day> getDay(int dayId) {
    return (select(days)
      ..where((tbl) => tbl.dayId.equals(dayId))).getSingle();
  }

  Stream<List<Day>> watchDays(int hikeId) {
    String mQuery =
        'SELECT d.* FROM days d' + ' WHERE d.hike_id = ' + hikeId.toString();
    return customSelectQuery(mQuery, readsFrom: {db.days}).watch().map((rows) {
      return rows.map((row) => Day.fromData(row.data, db)).toList();
    });
  }
}

///************************ Prices table & Dao ******************************************///

@DataClassName("Price")
class Prices extends Table {
  IntColumn get priceId => integer()();

  TextColumn get includedInPrice => text()();

  TextColumn get notIncludedInPrice => text()();

  @override
  Set<Column> get primaryKey => {priceId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [Prices])
class PriceDao extends DatabaseAccessor<RandoClubDataBase>
    with _$PriceDaoMixin {
  final RandoClubDataBase db;

  PriceDao(this.db) : super(db);

  Stream<List<Price>> watchAllPrices() => (select(prices)).watch();

  Future<int> insert(Insertable<Price> price) => into(prices).insert(price);

  Future replace(Insertable<Price> price) => update(prices).replace(price);

  Future<Price> getPrice(int priceId) {
    return (select(prices)
      ..where((tbl) => tbl.priceId.equals(priceId)))
        .getSingle();
  }

  Stream<Price> watchPrice(int priceId) {
    return (select(prices)
      ..where((tbl) => tbl.priceId.equals(priceId)))
        .watchSingle();
  }

  Stream<List<PricingItem>> watchPriceComponents(int priceId) {
    String mQuery = 'SELECT spc.price, pc.price_category_name' +
        ' FROM prices as pr, selected_price_categories as spc, price_categories as pc' +
        ' WHERE pr.price_id = spc.price_id' +
        ' AND spc.price_category_id = pc.price_category_id' +
        ' AND pr.price_id = ' + priceId.toString();
    return customSelectQuery(mQuery,
        readsFrom: {db.prices, db.selectedPriceCategories, db.priceCategories})
        .watch()
        .map((rows) {
      return rows.map((row) => PricingItem(
          price: row.readString('price'),
          priceCategoryName : row.readString('price_category_name')
      )).toList();
    });
  }
}

///************************ SelectedPriceCategories table & Dao ******************************************///

@DataClassName("SelectedPriceCategory")
class SelectedPriceCategories extends Table {
  IntColumn get priceId => integer()();

  IntColumn get priceCategoryId => integer()();

  TextColumn get price => text()();

  @override
  Set<Column> get primaryKey =>
      {priceId, priceCategoryId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [SelectedPriceCategories])
class SelectedPriceCategoryDao extends DatabaseAccessor<RandoClubDataBase>
    with _$SelectedPriceCategoryDaoMixin {
  final RandoClubDataBase db;

  SelectedPriceCategoryDao(this.db) : super(db);

  Stream<List<SelectedPriceCategory>> watchAllSelectedPriceCategories() =>
      (select(selectedPriceCategories)).watch();

  Future<int> insert(Insertable<SelectedPriceCategory> selectedPriceCategory) =>
      into(selectedPriceCategories).insert(selectedPriceCategory);

  Future replace(Insertable<SelectedPriceCategory> selectedPriceCategory) =>
      update(selectedPriceCategories).replace(selectedPriceCategory);

  Future<SelectedPriceCategory> getSelectedPriceCategory(int priceId,
      int priceCategoryId) {
    return (select(selectedPriceCategories)
      ..where((tbl) =>
      (tbl.priceId.equals(priceId) &
      tbl.priceCategoryId.equals(priceCategoryId))))
        .getSingle();
  }
}

///************************ PriceCategories table & Dao ******************************************///

@DataClassName("PriceCategory")
class PriceCategories extends Table {
  IntColumn get priceCategoryId => integer()();

  TextColumn get priceCategoryName => text()();

  @override
  Set<Column> get primaryKey =>
      {priceCategoryId}; // ignore: sdk_version_set_literal

}

@UseDao(tables: [PriceCategories])
class PriceCategoryDao extends DatabaseAccessor<RandoClubDataBase>
    with _$PriceCategoryDaoMixin {
  final RandoClubDataBase db;

  PriceCategoryDao(this.db) : super(db);

  Stream<List<PriceCategory>> watchAllPriceCategories() =>
      (select(priceCategories)).watch();

  Future<int> insert(Insertable<PriceCategory> priceCategory) =>
      into(priceCategories).insert(priceCategory);

  Future replace(Insertable<PriceCategory> priceCategory) =>
      update(priceCategories).replace(priceCategory);

  Future<PriceCategory> getPriceCategory(int priceCategoryId) {
    return (select(priceCategories)
      ..where((tbl) => tbl.priceCategoryId.equals(priceCategoryId)))
        .getSingle();
  }
}
