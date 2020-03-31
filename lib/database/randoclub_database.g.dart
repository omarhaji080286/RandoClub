// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'randoclub_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final int userId;
  final String name;
  final String email;
  final String imageUrl;
  final String firebaseId;
  final String registrationTime;
  final int age;
  final String gender;
  final int userTypeId;
  User(
      {@required this.userId,
      @required this.name,
      @required this.email,
      this.imageUrl,
      @required this.firebaseId,
      @required this.registrationTime,
      this.age,
      this.gender,
      @required this.userTypeId});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return User(
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      email:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      imageUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_url']),
      firebaseId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}firebase_id']),
      registrationTime: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}registration_time']),
      age: intType.mapFromDatabaseResponse(data['${effectivePrefix}age']),
      gender:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}gender']),
      userTypeId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_type_id']),
    );
  }
  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      userId: serializer.fromJson<int>(json['userId']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      firebaseId: serializer.fromJson<String>(json['firebaseId']),
      registrationTime: serializer.fromJson<String>(json['registrationTime']),
      age: serializer.fromJson<int>(json['age']),
      gender: serializer.fromJson<String>(json['gender']),
      userTypeId: serializer.fromJson<int>(json['userTypeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<int>(userId),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'firebaseId': serializer.toJson<String>(firebaseId),
      'registrationTime': serializer.toJson<String>(registrationTime),
      'age': serializer.toJson<int>(age),
      'gender': serializer.toJson<String>(gender),
      'userTypeId': serializer.toJson<int>(userTypeId),
    };
  }

  @override
  UsersCompanion createCompanion(bool nullToAbsent) {
    return UsersCompanion(
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      firebaseId: firebaseId == null && nullToAbsent
          ? const Value.absent()
          : Value(firebaseId),
      registrationTime: registrationTime == null && nullToAbsent
          ? const Value.absent()
          : Value(registrationTime),
      age: age == null && nullToAbsent ? const Value.absent() : Value(age),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      userTypeId: userTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(userTypeId),
    );
  }

  User copyWith(
          {int userId,
          String name,
          String email,
          String imageUrl,
          String firebaseId,
          String registrationTime,
          int age,
          String gender,
          int userTypeId}) =>
      User(
        userId: userId ?? this.userId,
        name: name ?? this.name,
        email: email ?? this.email,
        imageUrl: imageUrl ?? this.imageUrl,
        firebaseId: firebaseId ?? this.firebaseId,
        registrationTime: registrationTime ?? this.registrationTime,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        userTypeId: userTypeId ?? this.userTypeId,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('firebaseId: $firebaseId, ')
          ..write('registrationTime: $registrationTime, ')
          ..write('age: $age, ')
          ..write('gender: $gender, ')
          ..write('userTypeId: $userTypeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      userId.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              email.hashCode,
              $mrjc(
                  imageUrl.hashCode,
                  $mrjc(
                      firebaseId.hashCode,
                      $mrjc(
                          registrationTime.hashCode,
                          $mrjc(
                              age.hashCode,
                              $mrjc(
                                  gender.hashCode, userTypeId.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.userId == this.userId &&
          other.name == this.name &&
          other.email == this.email &&
          other.imageUrl == this.imageUrl &&
          other.firebaseId == this.firebaseId &&
          other.registrationTime == this.registrationTime &&
          other.age == this.age &&
          other.gender == this.gender &&
          other.userTypeId == this.userTypeId);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> userId;
  final Value<String> name;
  final Value<String> email;
  final Value<String> imageUrl;
  final Value<String> firebaseId;
  final Value<String> registrationTime;
  final Value<int> age;
  final Value<String> gender;
  final Value<int> userTypeId;
  const UsersCompanion({
    this.userId = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.firebaseId = const Value.absent(),
    this.registrationTime = const Value.absent(),
    this.age = const Value.absent(),
    this.gender = const Value.absent(),
    this.userTypeId = const Value.absent(),
  });
  UsersCompanion.insert({
    @required int userId,
    @required String name,
    @required String email,
    this.imageUrl = const Value.absent(),
    @required String firebaseId,
    @required String registrationTime,
    this.age = const Value.absent(),
    this.gender = const Value.absent(),
    @required int userTypeId,
  })  : userId = Value(userId),
        name = Value(name),
        email = Value(email),
        firebaseId = Value(firebaseId),
        registrationTime = Value(registrationTime),
        userTypeId = Value(userTypeId);
  UsersCompanion copyWith(
      {Value<int> userId,
      Value<String> name,
      Value<String> email,
      Value<String> imageUrl,
      Value<String> firebaseId,
      Value<String> registrationTime,
      Value<int> age,
      Value<String> gender,
      Value<int> userTypeId}) {
    return UsersCompanion(
      userId: userId ?? this.userId,
      name: name ?? this.name,
      email: email ?? this.email,
      imageUrl: imageUrl ?? this.imageUrl,
      firebaseId: firebaseId ?? this.firebaseId,
      registrationTime: registrationTime ?? this.registrationTime,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      userTypeId: userTypeId ?? this.userTypeId,
    );
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedIntColumn _userId;
  @override
  GeneratedIntColumn get userId => _userId ??= _constructUserId();
  GeneratedIntColumn _constructUserId() {
    return GeneratedIntColumn(
      'user_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  @override
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn(
      'email',
      $tableName,
      false,
    );
  }

  final VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
  GeneratedTextColumn _imageUrl;
  @override
  GeneratedTextColumn get imageUrl => _imageUrl ??= _constructImageUrl();
  GeneratedTextColumn _constructImageUrl() {
    return GeneratedTextColumn(
      'image_url',
      $tableName,
      true,
    );
  }

  final VerificationMeta _firebaseIdMeta = const VerificationMeta('firebaseId');
  GeneratedTextColumn _firebaseId;
  @override
  GeneratedTextColumn get firebaseId => _firebaseId ??= _constructFirebaseId();
  GeneratedTextColumn _constructFirebaseId() {
    return GeneratedTextColumn(
      'firebase_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _registrationTimeMeta =
      const VerificationMeta('registrationTime');
  GeneratedTextColumn _registrationTime;
  @override
  GeneratedTextColumn get registrationTime =>
      _registrationTime ??= _constructRegistrationTime();
  GeneratedTextColumn _constructRegistrationTime() {
    return GeneratedTextColumn(
      'registration_time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ageMeta = const VerificationMeta('age');
  GeneratedIntColumn _age;
  @override
  GeneratedIntColumn get age => _age ??= _constructAge();
  GeneratedIntColumn _constructAge() {
    return GeneratedIntColumn(
      'age',
      $tableName,
      true,
    );
  }

  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  GeneratedTextColumn _gender;
  @override
  GeneratedTextColumn get gender => _gender ??= _constructGender();
  GeneratedTextColumn _constructGender() {
    return GeneratedTextColumn(
      'gender',
      $tableName,
      true,
    );
  }

  final VerificationMeta _userTypeIdMeta = const VerificationMeta('userTypeId');
  GeneratedIntColumn _userTypeId;
  @override
  GeneratedIntColumn get userTypeId => _userTypeId ??= _constructUserTypeId();
  GeneratedIntColumn _constructUserTypeId() {
    return GeneratedIntColumn(
      'user_type_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        userId,
        name,
        email,
        imageUrl,
        firebaseId,
        registrationTime,
        age,
        gender,
        userTypeId
      ];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(UsersCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.userId.present) {
      context.handle(
          _userIdMeta, userId.isAcceptableValue(d.userId.value, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.email.present) {
      context.handle(
          _emailMeta, email.isAcceptableValue(d.email.value, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (d.imageUrl.present) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableValue(d.imageUrl.value, _imageUrlMeta));
    }
    if (d.firebaseId.present) {
      context.handle(_firebaseIdMeta,
          firebaseId.isAcceptableValue(d.firebaseId.value, _firebaseIdMeta));
    } else if (isInserting) {
      context.missing(_firebaseIdMeta);
    }
    if (d.registrationTime.present) {
      context.handle(
          _registrationTimeMeta,
          registrationTime.isAcceptableValue(
              d.registrationTime.value, _registrationTimeMeta));
    } else if (isInserting) {
      context.missing(_registrationTimeMeta);
    }
    if (d.age.present) {
      context.handle(_ageMeta, age.isAcceptableValue(d.age.value, _ageMeta));
    }
    if (d.gender.present) {
      context.handle(
          _genderMeta, gender.isAcceptableValue(d.gender.value, _genderMeta));
    }
    if (d.userTypeId.present) {
      context.handle(_userTypeIdMeta,
          userTypeId.isAcceptableValue(d.userTypeId.value, _userTypeIdMeta));
    } else if (isInserting) {
      context.missing(_userTypeIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(UsersCompanion d) {
    final map = <String, Variable>{};
    if (d.userId.present) {
      map['user_id'] = Variable<int, IntType>(d.userId.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.email.present) {
      map['email'] = Variable<String, StringType>(d.email.value);
    }
    if (d.imageUrl.present) {
      map['image_url'] = Variable<String, StringType>(d.imageUrl.value);
    }
    if (d.firebaseId.present) {
      map['firebase_id'] = Variable<String, StringType>(d.firebaseId.value);
    }
    if (d.registrationTime.present) {
      map['registration_time'] =
          Variable<String, StringType>(d.registrationTime.value);
    }
    if (d.age.present) {
      map['age'] = Variable<int, IntType>(d.age.value);
    }
    if (d.gender.present) {
      map['gender'] = Variable<String, StringType>(d.gender.value);
    }
    if (d.userTypeId.present) {
      map['user_type_id'] = Variable<int, IntType>(d.userTypeId.value);
    }
    return map;
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

class Country extends DataClass implements Insertable<Country> {
  final int countryId;
  final String name;
  Country({@required this.countryId, @required this.name});
  factory Country.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Country(
      countryId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}country_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
    );
  }
  factory Country.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Country(
      countryId: serializer.fromJson<int>(json['countryId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'countryId': serializer.toJson<int>(countryId),
      'name': serializer.toJson<String>(name),
    };
  }

  @override
  CountriesCompanion createCompanion(bool nullToAbsent) {
    return CountriesCompanion(
      countryId: countryId == null && nullToAbsent
          ? const Value.absent()
          : Value(countryId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  Country copyWith({int countryId, String name}) => Country(
        countryId: countryId ?? this.countryId,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Country(')
          ..write('countryId: $countryId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(countryId.hashCode, name.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Country &&
          other.countryId == this.countryId &&
          other.name == this.name);
}

class CountriesCompanion extends UpdateCompanion<Country> {
  final Value<int> countryId;
  final Value<String> name;
  const CountriesCompanion({
    this.countryId = const Value.absent(),
    this.name = const Value.absent(),
  });
  CountriesCompanion.insert({
    @required int countryId,
    @required String name,
  })  : countryId = Value(countryId),
        name = Value(name);
  CountriesCompanion copyWith({Value<int> countryId, Value<String> name}) {
    return CountriesCompanion(
      countryId: countryId ?? this.countryId,
      name: name ?? this.name,
    );
  }
}

class $CountriesTable extends Countries
    with TableInfo<$CountriesTable, Country> {
  final GeneratedDatabase _db;
  final String _alias;
  $CountriesTable(this._db, [this._alias]);
  final VerificationMeta _countryIdMeta = const VerificationMeta('countryId');
  GeneratedIntColumn _countryId;
  @override
  GeneratedIntColumn get countryId => _countryId ??= _constructCountryId();
  GeneratedIntColumn _constructCountryId() {
    return GeneratedIntColumn(
      'country_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [countryId, name];
  @override
  $CountriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'countries';
  @override
  final String actualTableName = 'countries';
  @override
  VerificationContext validateIntegrity(CountriesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.countryId.present) {
      context.handle(_countryIdMeta,
          countryId.isAcceptableValue(d.countryId.value, _countryIdMeta));
    } else if (isInserting) {
      context.missing(_countryIdMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {countryId};
  @override
  Country map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Country.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CountriesCompanion d) {
    final map = <String, Variable>{};
    if (d.countryId.present) {
      map['country_id'] = Variable<int, IntType>(d.countryId.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    return map;
  }

  @override
  $CountriesTable createAlias(String alias) {
    return $CountriesTable(_db, alias);
  }
}

class Region extends DataClass implements Insertable<Region> {
  final int regionId;
  final String regionName;
  final int countryId;
  Region(
      {@required this.regionId,
      @required this.regionName,
      @required this.countryId});
  factory Region.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Region(
      regionId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}region_id']),
      regionName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}region_name']),
      countryId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}country_id']),
    );
  }
  factory Region.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Region(
      regionId: serializer.fromJson<int>(json['regionId']),
      regionName: serializer.fromJson<String>(json['regionName']),
      countryId: serializer.fromJson<int>(json['countryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'regionId': serializer.toJson<int>(regionId),
      'regionName': serializer.toJson<String>(regionName),
      'countryId': serializer.toJson<int>(countryId),
    };
  }

  @override
  RegionsCompanion createCompanion(bool nullToAbsent) {
    return RegionsCompanion(
      regionId: regionId == null && nullToAbsent
          ? const Value.absent()
          : Value(regionId),
      regionName: regionName == null && nullToAbsent
          ? const Value.absent()
          : Value(regionName),
      countryId: countryId == null && nullToAbsent
          ? const Value.absent()
          : Value(countryId),
    );
  }

  Region copyWith({int regionId, String regionName, int countryId}) => Region(
        regionId: regionId ?? this.regionId,
        regionName: regionName ?? this.regionName,
        countryId: countryId ?? this.countryId,
      );
  @override
  String toString() {
    return (StringBuffer('Region(')
          ..write('regionId: $regionId, ')
          ..write('regionName: $regionName, ')
          ..write('countryId: $countryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(regionId.hashCode, $mrjc(regionName.hashCode, countryId.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Region &&
          other.regionId == this.regionId &&
          other.regionName == this.regionName &&
          other.countryId == this.countryId);
}

class RegionsCompanion extends UpdateCompanion<Region> {
  final Value<int> regionId;
  final Value<String> regionName;
  final Value<int> countryId;
  const RegionsCompanion({
    this.regionId = const Value.absent(),
    this.regionName = const Value.absent(),
    this.countryId = const Value.absent(),
  });
  RegionsCompanion.insert({
    @required int regionId,
    @required String regionName,
    @required int countryId,
  })  : regionId = Value(regionId),
        regionName = Value(regionName),
        countryId = Value(countryId);
  RegionsCompanion copyWith(
      {Value<int> regionId, Value<String> regionName, Value<int> countryId}) {
    return RegionsCompanion(
      regionId: regionId ?? this.regionId,
      regionName: regionName ?? this.regionName,
      countryId: countryId ?? this.countryId,
    );
  }
}

class $RegionsTable extends Regions with TableInfo<$RegionsTable, Region> {
  final GeneratedDatabase _db;
  final String _alias;
  $RegionsTable(this._db, [this._alias]);
  final VerificationMeta _regionIdMeta = const VerificationMeta('regionId');
  GeneratedIntColumn _regionId;
  @override
  GeneratedIntColumn get regionId => _regionId ??= _constructRegionId();
  GeneratedIntColumn _constructRegionId() {
    return GeneratedIntColumn(
      'region_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _regionNameMeta = const VerificationMeta('regionName');
  GeneratedTextColumn _regionName;
  @override
  GeneratedTextColumn get regionName => _regionName ??= _constructRegionName();
  GeneratedTextColumn _constructRegionName() {
    return GeneratedTextColumn(
      'region_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _countryIdMeta = const VerificationMeta('countryId');
  GeneratedIntColumn _countryId;
  @override
  GeneratedIntColumn get countryId => _countryId ??= _constructCountryId();
  GeneratedIntColumn _constructCountryId() {
    return GeneratedIntColumn(
      'country_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [regionId, regionName, countryId];
  @override
  $RegionsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'regions';
  @override
  final String actualTableName = 'regions';
  @override
  VerificationContext validateIntegrity(RegionsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.regionId.present) {
      context.handle(_regionIdMeta,
          regionId.isAcceptableValue(d.regionId.value, _regionIdMeta));
    } else if (isInserting) {
      context.missing(_regionIdMeta);
    }
    if (d.regionName.present) {
      context.handle(_regionNameMeta,
          regionName.isAcceptableValue(d.regionName.value, _regionNameMeta));
    } else if (isInserting) {
      context.missing(_regionNameMeta);
    }
    if (d.countryId.present) {
      context.handle(_countryIdMeta,
          countryId.isAcceptableValue(d.countryId.value, _countryIdMeta));
    } else if (isInserting) {
      context.missing(_countryIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {regionId};
  @override
  Region map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Region.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(RegionsCompanion d) {
    final map = <String, Variable>{};
    if (d.regionId.present) {
      map['region_id'] = Variable<int, IntType>(d.regionId.value);
    }
    if (d.regionName.present) {
      map['region_name'] = Variable<String, StringType>(d.regionName.value);
    }
    if (d.countryId.present) {
      map['country_id'] = Variable<int, IntType>(d.countryId.value);
    }
    return map;
  }

  @override
  $RegionsTable createAlias(String alias) {
    return $RegionsTable(_db, alias);
  }
}

class City extends DataClass implements Insertable<City> {
  final int cityId;
  final String name;
  final int regionId;
  City({@required this.cityId, @required this.name, @required this.regionId});
  factory City.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return City(
      cityId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}city_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      regionId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}region_id']),
    );
  }
  factory City.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return City(
      cityId: serializer.fromJson<int>(json['cityId']),
      name: serializer.fromJson<String>(json['name']),
      regionId: serializer.fromJson<int>(json['regionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cityId': serializer.toJson<int>(cityId),
      'name': serializer.toJson<String>(name),
      'regionId': serializer.toJson<int>(regionId),
    };
  }

  @override
  CitiesCompanion createCompanion(bool nullToAbsent) {
    return CitiesCompanion(
      cityId:
          cityId == null && nullToAbsent ? const Value.absent() : Value(cityId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      regionId: regionId == null && nullToAbsent
          ? const Value.absent()
          : Value(regionId),
    );
  }

  City copyWith({int cityId, String name, int regionId}) => City(
        cityId: cityId ?? this.cityId,
        name: name ?? this.name,
        regionId: regionId ?? this.regionId,
      );
  @override
  String toString() {
    return (StringBuffer('City(')
          ..write('cityId: $cityId, ')
          ..write('name: $name, ')
          ..write('regionId: $regionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(cityId.hashCode, $mrjc(name.hashCode, regionId.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is City &&
          other.cityId == this.cityId &&
          other.name == this.name &&
          other.regionId == this.regionId);
}

class CitiesCompanion extends UpdateCompanion<City> {
  final Value<int> cityId;
  final Value<String> name;
  final Value<int> regionId;
  const CitiesCompanion({
    this.cityId = const Value.absent(),
    this.name = const Value.absent(),
    this.regionId = const Value.absent(),
  });
  CitiesCompanion.insert({
    @required int cityId,
    @required String name,
    @required int regionId,
  })  : cityId = Value(cityId),
        name = Value(name),
        regionId = Value(regionId);
  CitiesCompanion copyWith(
      {Value<int> cityId, Value<String> name, Value<int> regionId}) {
    return CitiesCompanion(
      cityId: cityId ?? this.cityId,
      name: name ?? this.name,
      regionId: regionId ?? this.regionId,
    );
  }
}

class $CitiesTable extends Cities with TableInfo<$CitiesTable, City> {
  final GeneratedDatabase _db;
  final String _alias;
  $CitiesTable(this._db, [this._alias]);
  final VerificationMeta _cityIdMeta = const VerificationMeta('cityId');
  GeneratedIntColumn _cityId;
  @override
  GeneratedIntColumn get cityId => _cityId ??= _constructCityId();
  GeneratedIntColumn _constructCityId() {
    return GeneratedIntColumn(
      'city_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _regionIdMeta = const VerificationMeta('regionId');
  GeneratedIntColumn _regionId;
  @override
  GeneratedIntColumn get regionId => _regionId ??= _constructRegionId();
  GeneratedIntColumn _constructRegionId() {
    return GeneratedIntColumn(
      'region_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [cityId, name, regionId];
  @override
  $CitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'cities';
  @override
  final String actualTableName = 'cities';
  @override
  VerificationContext validateIntegrity(CitiesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.cityId.present) {
      context.handle(
          _cityIdMeta, cityId.isAcceptableValue(d.cityId.value, _cityIdMeta));
    } else if (isInserting) {
      context.missing(_cityIdMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.regionId.present) {
      context.handle(_regionIdMeta,
          regionId.isAcceptableValue(d.regionId.value, _regionIdMeta));
    } else if (isInserting) {
      context.missing(_regionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cityId};
  @override
  City map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return City.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CitiesCompanion d) {
    final map = <String, Variable>{};
    if (d.cityId.present) {
      map['city_id'] = Variable<int, IntType>(d.cityId.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.regionId.present) {
      map['region_id'] = Variable<int, IntType>(d.regionId.value);
    }
    return map;
  }

  @override
  $CitiesTable createAlias(String alias) {
    return $CitiesTable(_db, alias);
  }
}

class UserType extends DataClass implements Insertable<UserType> {
  final int userTypeId;
  final String name;
  UserType({@required this.userTypeId, @required this.name});
  factory UserType.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return UserType(
      userTypeId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_type_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
    );
  }
  factory UserType.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserType(
      userTypeId: serializer.fromJson<int>(json['userTypeId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userTypeId': serializer.toJson<int>(userTypeId),
      'name': serializer.toJson<String>(name),
    };
  }

  @override
  UserTypesCompanion createCompanion(bool nullToAbsent) {
    return UserTypesCompanion(
      userTypeId: userTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(userTypeId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  UserType copyWith({int userTypeId, String name}) => UserType(
        userTypeId: userTypeId ?? this.userTypeId,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('UserType(')
          ..write('userTypeId: $userTypeId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(userTypeId.hashCode, name.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UserType &&
          other.userTypeId == this.userTypeId &&
          other.name == this.name);
}

class UserTypesCompanion extends UpdateCompanion<UserType> {
  final Value<int> userTypeId;
  final Value<String> name;
  const UserTypesCompanion({
    this.userTypeId = const Value.absent(),
    this.name = const Value.absent(),
  });
  UserTypesCompanion.insert({
    @required int userTypeId,
    @required String name,
  })  : userTypeId = Value(userTypeId),
        name = Value(name);
  UserTypesCompanion copyWith({Value<int> userTypeId, Value<String> name}) {
    return UserTypesCompanion(
      userTypeId: userTypeId ?? this.userTypeId,
      name: name ?? this.name,
    );
  }
}

class $UserTypesTable extends UserTypes
    with TableInfo<$UserTypesTable, UserType> {
  final GeneratedDatabase _db;
  final String _alias;
  $UserTypesTable(this._db, [this._alias]);
  final VerificationMeta _userTypeIdMeta = const VerificationMeta('userTypeId');
  GeneratedIntColumn _userTypeId;
  @override
  GeneratedIntColumn get userTypeId => _userTypeId ??= _constructUserTypeId();
  GeneratedIntColumn _constructUserTypeId() {
    return GeneratedIntColumn(
      'user_type_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [userTypeId, name];
  @override
  $UserTypesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_types';
  @override
  final String actualTableName = 'user_types';
  @override
  VerificationContext validateIntegrity(UserTypesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.userTypeId.present) {
      context.handle(_userTypeIdMeta,
          userTypeId.isAcceptableValue(d.userTypeId.value, _userTypeIdMeta));
    } else if (isInserting) {
      context.missing(_userTypeIdMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userTypeId};
  @override
  UserType map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserType.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(UserTypesCompanion d) {
    final map = <String, Variable>{};
    if (d.userTypeId.present) {
      map['user_type_id'] = Variable<int, IntType>(d.userTypeId.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    return map;
  }

  @override
  $UserTypesTable createAlias(String alias) {
    return $UserTypesTable(_db, alias);
  }
}

class Club extends DataClass implements Insertable<Club> {
  final int clubId;
  final String clubName;
  final String desc;
  final String logoUrl;
  final String email;
  final String website;
  final int userId;
  final int cityId;
  Club(
      {@required this.clubId,
      @required this.clubName,
      @required this.desc,
      @required this.logoUrl,
      @required this.email,
      @required this.website,
      @required this.userId,
      @required this.cityId});
  factory Club.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Club(
      clubId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}club_id']),
      clubName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}club_name']),
      desc: stringType.mapFromDatabaseResponse(data['${effectivePrefix}desc']),
      logoUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}logo_url']),
      email:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      website:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}website']),
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      cityId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}city_id']),
    );
  }
  factory Club.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Club(
      clubId: serializer.fromJson<int>(json['clubId']),
      clubName: serializer.fromJson<String>(json['clubName']),
      desc: serializer.fromJson<String>(json['desc']),
      logoUrl: serializer.fromJson<String>(json['logoUrl']),
      email: serializer.fromJson<String>(json['email']),
      website: serializer.fromJson<String>(json['website']),
      userId: serializer.fromJson<int>(json['userId']),
      cityId: serializer.fromJson<int>(json['cityId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clubId': serializer.toJson<int>(clubId),
      'clubName': serializer.toJson<String>(clubName),
      'desc': serializer.toJson<String>(desc),
      'logoUrl': serializer.toJson<String>(logoUrl),
      'email': serializer.toJson<String>(email),
      'website': serializer.toJson<String>(website),
      'userId': serializer.toJson<int>(userId),
      'cityId': serializer.toJson<int>(cityId),
    };
  }

  @override
  ClubsCompanion createCompanion(bool nullToAbsent) {
    return ClubsCompanion(
      clubId:
          clubId == null && nullToAbsent ? const Value.absent() : Value(clubId),
      clubName: clubName == null && nullToAbsent
          ? const Value.absent()
          : Value(clubName),
      desc: desc == null && nullToAbsent ? const Value.absent() : Value(desc),
      logoUrl: logoUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(logoUrl),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      website: website == null && nullToAbsent
          ? const Value.absent()
          : Value(website),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      cityId:
          cityId == null && nullToAbsent ? const Value.absent() : Value(cityId),
    );
  }

  Club copyWith(
          {int clubId,
          String clubName,
          String desc,
          String logoUrl,
          String email,
          String website,
          int userId,
          int cityId}) =>
      Club(
        clubId: clubId ?? this.clubId,
        clubName: clubName ?? this.clubName,
        desc: desc ?? this.desc,
        logoUrl: logoUrl ?? this.logoUrl,
        email: email ?? this.email,
        website: website ?? this.website,
        userId: userId ?? this.userId,
        cityId: cityId ?? this.cityId,
      );
  @override
  String toString() {
    return (StringBuffer('Club(')
          ..write('clubId: $clubId, ')
          ..write('clubName: $clubName, ')
          ..write('desc: $desc, ')
          ..write('logoUrl: $logoUrl, ')
          ..write('email: $email, ')
          ..write('website: $website, ')
          ..write('userId: $userId, ')
          ..write('cityId: $cityId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      clubId.hashCode,
      $mrjc(
          clubName.hashCode,
          $mrjc(
              desc.hashCode,
              $mrjc(
                  logoUrl.hashCode,
                  $mrjc(
                      email.hashCode,
                      $mrjc(website.hashCode,
                          $mrjc(userId.hashCode, cityId.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Club &&
          other.clubId == this.clubId &&
          other.clubName == this.clubName &&
          other.desc == this.desc &&
          other.logoUrl == this.logoUrl &&
          other.email == this.email &&
          other.website == this.website &&
          other.userId == this.userId &&
          other.cityId == this.cityId);
}

class ClubsCompanion extends UpdateCompanion<Club> {
  final Value<int> clubId;
  final Value<String> clubName;
  final Value<String> desc;
  final Value<String> logoUrl;
  final Value<String> email;
  final Value<String> website;
  final Value<int> userId;
  final Value<int> cityId;
  const ClubsCompanion({
    this.clubId = const Value.absent(),
    this.clubName = const Value.absent(),
    this.desc = const Value.absent(),
    this.logoUrl = const Value.absent(),
    this.email = const Value.absent(),
    this.website = const Value.absent(),
    this.userId = const Value.absent(),
    this.cityId = const Value.absent(),
  });
  ClubsCompanion.insert({
    @required int clubId,
    @required String clubName,
    @required String desc,
    @required String logoUrl,
    @required String email,
    @required String website,
    @required int userId,
    @required int cityId,
  })  : clubId = Value(clubId),
        clubName = Value(clubName),
        desc = Value(desc),
        logoUrl = Value(logoUrl),
        email = Value(email),
        website = Value(website),
        userId = Value(userId),
        cityId = Value(cityId);
  ClubsCompanion copyWith(
      {Value<int> clubId,
      Value<String> clubName,
      Value<String> desc,
      Value<String> logoUrl,
      Value<String> email,
      Value<String> website,
      Value<int> userId,
      Value<int> cityId}) {
    return ClubsCompanion(
      clubId: clubId ?? this.clubId,
      clubName: clubName ?? this.clubName,
      desc: desc ?? this.desc,
      logoUrl: logoUrl ?? this.logoUrl,
      email: email ?? this.email,
      website: website ?? this.website,
      userId: userId ?? this.userId,
      cityId: cityId ?? this.cityId,
    );
  }
}

class $ClubsTable extends Clubs with TableInfo<$ClubsTable, Club> {
  final GeneratedDatabase _db;
  final String _alias;
  $ClubsTable(this._db, [this._alias]);
  final VerificationMeta _clubIdMeta = const VerificationMeta('clubId');
  GeneratedIntColumn _clubId;
  @override
  GeneratedIntColumn get clubId => _clubId ??= _constructClubId();
  GeneratedIntColumn _constructClubId() {
    return GeneratedIntColumn(
      'club_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _clubNameMeta = const VerificationMeta('clubName');
  GeneratedTextColumn _clubName;
  @override
  GeneratedTextColumn get clubName => _clubName ??= _constructClubName();
  GeneratedTextColumn _constructClubName() {
    return GeneratedTextColumn(
      'club_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descMeta = const VerificationMeta('desc');
  GeneratedTextColumn _desc;
  @override
  GeneratedTextColumn get desc => _desc ??= _constructDesc();
  GeneratedTextColumn _constructDesc() {
    return GeneratedTextColumn(
      'desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _logoUrlMeta = const VerificationMeta('logoUrl');
  GeneratedTextColumn _logoUrl;
  @override
  GeneratedTextColumn get logoUrl => _logoUrl ??= _constructLogoUrl();
  GeneratedTextColumn _constructLogoUrl() {
    return GeneratedTextColumn(
      'logo_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  @override
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn(
      'email',
      $tableName,
      false,
    );
  }

  final VerificationMeta _websiteMeta = const VerificationMeta('website');
  GeneratedTextColumn _website;
  @override
  GeneratedTextColumn get website => _website ??= _constructWebsite();
  GeneratedTextColumn _constructWebsite() {
    return GeneratedTextColumn(
      'website',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedIntColumn _userId;
  @override
  GeneratedIntColumn get userId => _userId ??= _constructUserId();
  GeneratedIntColumn _constructUserId() {
    return GeneratedIntColumn(
      'user_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cityIdMeta = const VerificationMeta('cityId');
  GeneratedIntColumn _cityId;
  @override
  GeneratedIntColumn get cityId => _cityId ??= _constructCityId();
  GeneratedIntColumn _constructCityId() {
    return GeneratedIntColumn(
      'city_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [clubId, clubName, desc, logoUrl, email, website, userId, cityId];
  @override
  $ClubsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'clubs';
  @override
  final String actualTableName = 'clubs';
  @override
  VerificationContext validateIntegrity(ClubsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.clubId.present) {
      context.handle(
          _clubIdMeta, clubId.isAcceptableValue(d.clubId.value, _clubIdMeta));
    } else if (isInserting) {
      context.missing(_clubIdMeta);
    }
    if (d.clubName.present) {
      context.handle(_clubNameMeta,
          clubName.isAcceptableValue(d.clubName.value, _clubNameMeta));
    } else if (isInserting) {
      context.missing(_clubNameMeta);
    }
    if (d.desc.present) {
      context.handle(
          _descMeta, desc.isAcceptableValue(d.desc.value, _descMeta));
    } else if (isInserting) {
      context.missing(_descMeta);
    }
    if (d.logoUrl.present) {
      context.handle(_logoUrlMeta,
          logoUrl.isAcceptableValue(d.logoUrl.value, _logoUrlMeta));
    } else if (isInserting) {
      context.missing(_logoUrlMeta);
    }
    if (d.email.present) {
      context.handle(
          _emailMeta, email.isAcceptableValue(d.email.value, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (d.website.present) {
      context.handle(_websiteMeta,
          website.isAcceptableValue(d.website.value, _websiteMeta));
    } else if (isInserting) {
      context.missing(_websiteMeta);
    }
    if (d.userId.present) {
      context.handle(
          _userIdMeta, userId.isAcceptableValue(d.userId.value, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (d.cityId.present) {
      context.handle(
          _cityIdMeta, cityId.isAcceptableValue(d.cityId.value, _cityIdMeta));
    } else if (isInserting) {
      context.missing(_cityIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clubId};
  @override
  Club map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Club.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ClubsCompanion d) {
    final map = <String, Variable>{};
    if (d.clubId.present) {
      map['club_id'] = Variable<int, IntType>(d.clubId.value);
    }
    if (d.clubName.present) {
      map['club_name'] = Variable<String, StringType>(d.clubName.value);
    }
    if (d.desc.present) {
      map['desc'] = Variable<String, StringType>(d.desc.value);
    }
    if (d.logoUrl.present) {
      map['logo_url'] = Variable<String, StringType>(d.logoUrl.value);
    }
    if (d.email.present) {
      map['email'] = Variable<String, StringType>(d.email.value);
    }
    if (d.website.present) {
      map['website'] = Variable<String, StringType>(d.website.value);
    }
    if (d.userId.present) {
      map['user_id'] = Variable<int, IntType>(d.userId.value);
    }
    if (d.cityId.present) {
      map['city_id'] = Variable<int, IntType>(d.cityId.value);
    }
    return map;
  }

  @override
  $ClubsTable createAlias(String alias) {
    return $ClubsTable(_db, alias);
  }
}

class HikeStatus extends DataClass implements Insertable<HikeStatus> {
  final int hikeStatusId;
  final String status;
  HikeStatus({@required this.hikeStatusId, @required this.status});
  factory HikeStatus.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return HikeStatus(
      hikeStatusId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}hike_status_id']),
      status:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}status']),
    );
  }
  factory HikeStatus.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return HikeStatus(
      hikeStatusId: serializer.fromJson<int>(json['hikeStatusId']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'hikeStatusId': serializer.toJson<int>(hikeStatusId),
      'status': serializer.toJson<String>(status),
    };
  }

  @override
  HikeStatusesCompanion createCompanion(bool nullToAbsent) {
    return HikeStatusesCompanion(
      hikeStatusId: hikeStatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(hikeStatusId),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
    );
  }

  HikeStatus copyWith({int hikeStatusId, String status}) => HikeStatus(
        hikeStatusId: hikeStatusId ?? this.hikeStatusId,
        status: status ?? this.status,
      );
  @override
  String toString() {
    return (StringBuffer('HikeStatus(')
          ..write('hikeStatusId: $hikeStatusId, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(hikeStatusId.hashCode, status.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is HikeStatus &&
          other.hikeStatusId == this.hikeStatusId &&
          other.status == this.status);
}

class HikeStatusesCompanion extends UpdateCompanion<HikeStatus> {
  final Value<int> hikeStatusId;
  final Value<String> status;
  const HikeStatusesCompanion({
    this.hikeStatusId = const Value.absent(),
    this.status = const Value.absent(),
  });
  HikeStatusesCompanion.insert({
    @required int hikeStatusId,
    @required String status,
  })  : hikeStatusId = Value(hikeStatusId),
        status = Value(status);
  HikeStatusesCompanion copyWith(
      {Value<int> hikeStatusId, Value<String> status}) {
    return HikeStatusesCompanion(
      hikeStatusId: hikeStatusId ?? this.hikeStatusId,
      status: status ?? this.status,
    );
  }
}

class $HikeStatusesTable extends HikeStatuses
    with TableInfo<$HikeStatusesTable, HikeStatus> {
  final GeneratedDatabase _db;
  final String _alias;
  $HikeStatusesTable(this._db, [this._alias]);
  final VerificationMeta _hikeStatusIdMeta =
      const VerificationMeta('hikeStatusId');
  GeneratedIntColumn _hikeStatusId;
  @override
  GeneratedIntColumn get hikeStatusId =>
      _hikeStatusId ??= _constructHikeStatusId();
  GeneratedIntColumn _constructHikeStatusId() {
    return GeneratedIntColumn(
      'hike_status_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusMeta = const VerificationMeta('status');
  GeneratedTextColumn _status;
  @override
  GeneratedTextColumn get status => _status ??= _constructStatus();
  GeneratedTextColumn _constructStatus() {
    return GeneratedTextColumn(
      'status',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [hikeStatusId, status];
  @override
  $HikeStatusesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'hike_statuses';
  @override
  final String actualTableName = 'hike_statuses';
  @override
  VerificationContext validateIntegrity(HikeStatusesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.hikeStatusId.present) {
      context.handle(
          _hikeStatusIdMeta,
          hikeStatusId.isAcceptableValue(
              d.hikeStatusId.value, _hikeStatusIdMeta));
    } else if (isInserting) {
      context.missing(_hikeStatusIdMeta);
    }
    if (d.status.present) {
      context.handle(
          _statusMeta, status.isAcceptableValue(d.status.value, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {hikeStatusId};
  @override
  HikeStatus map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return HikeStatus.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(HikeStatusesCompanion d) {
    final map = <String, Variable>{};
    if (d.hikeStatusId.present) {
      map['hike_status_id'] = Variable<int, IntType>(d.hikeStatusId.value);
    }
    if (d.status.present) {
      map['status'] = Variable<String, StringType>(d.status.value);
    }
    return map;
  }

  @override
  $HikeStatusesTable createAlias(String alias) {
    return $HikeStatusesTable(_db, alias);
  }
}

class Hike extends DataClass implements Insertable<Hike> {
  final int hikeId;
  final String description;
  final String imageUrl;
  final String location;
  final int maxParticipants;
  final int difficulty;
  final String startDay;
  final String endDay;
  final String feeding;
  final String transport;
  final int clubId;
  final int regionId;
  final int hikeStatusId;
  final String creationDate;
  final String publicationDate;
  final int priceId;
  final String equipment;
  final String meetingPoint;
  Hike(
      {@required this.hikeId,
      @required this.description,
      @required this.imageUrl,
      @required this.location,
      @required this.maxParticipants,
      @required this.difficulty,
      @required this.startDay,
      @required this.endDay,
      @required this.feeding,
      @required this.transport,
      @required this.clubId,
      @required this.regionId,
      @required this.hikeStatusId,
      @required this.creationDate,
      @required this.publicationDate,
      @required this.priceId,
      @required this.equipment,
      @required this.meetingPoint});
  factory Hike.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Hike(
      hikeId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}hike_id']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      imageUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_url']),
      location: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}location']),
      maxParticipants: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}max_participants']),
      difficulty:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}difficulty']),
      startDay: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}start_day']),
      endDay:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}end_day']),
      feeding:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}feeding']),
      transport: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}transport']),
      clubId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}club_id']),
      regionId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}region_id']),
      hikeStatusId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}hike_status_id']),
      creationDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_date']),
      publicationDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}publication_date']),
      priceId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}price_id']),
      equipment: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}equipment']),
      meetingPoint: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}meeting_point']),
    );
  }
  factory Hike.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Hike(
      hikeId: serializer.fromJson<int>(json['hikeId']),
      description: serializer.fromJson<String>(json['description']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      location: serializer.fromJson<String>(json['location']),
      maxParticipants: serializer.fromJson<int>(json['maxParticipants']),
      difficulty: serializer.fromJson<int>(json['difficulty']),
      startDay: serializer.fromJson<String>(json['startDay']),
      endDay: serializer.fromJson<String>(json['endDay']),
      feeding: serializer.fromJson<String>(json['feeding']),
      transport: serializer.fromJson<String>(json['transport']),
      clubId: serializer.fromJson<int>(json['clubId']),
      regionId: serializer.fromJson<int>(json['regionId']),
      hikeStatusId: serializer.fromJson<int>(json['hikeStatusId']),
      creationDate: serializer.fromJson<String>(json['creationDate']),
      publicationDate: serializer.fromJson<String>(json['publicationDate']),
      priceId: serializer.fromJson<int>(json['priceId']),
      equipment: serializer.fromJson<String>(json['equipment']),
      meetingPoint: serializer.fromJson<String>(json['meetingPoint']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'hikeId': serializer.toJson<int>(hikeId),
      'description': serializer.toJson<String>(description),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'location': serializer.toJson<String>(location),
      'maxParticipants': serializer.toJson<int>(maxParticipants),
      'difficulty': serializer.toJson<int>(difficulty),
      'startDay': serializer.toJson<String>(startDay),
      'endDay': serializer.toJson<String>(endDay),
      'feeding': serializer.toJson<String>(feeding),
      'transport': serializer.toJson<String>(transport),
      'clubId': serializer.toJson<int>(clubId),
      'regionId': serializer.toJson<int>(regionId),
      'hikeStatusId': serializer.toJson<int>(hikeStatusId),
      'creationDate': serializer.toJson<String>(creationDate),
      'publicationDate': serializer.toJson<String>(publicationDate),
      'priceId': serializer.toJson<int>(priceId),
      'equipment': serializer.toJson<String>(equipment),
      'meetingPoint': serializer.toJson<String>(meetingPoint),
    };
  }

  @override
  HikesCompanion createCompanion(bool nullToAbsent) {
    return HikesCompanion(
      hikeId:
          hikeId == null && nullToAbsent ? const Value.absent() : Value(hikeId),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
      maxParticipants: maxParticipants == null && nullToAbsent
          ? const Value.absent()
          : Value(maxParticipants),
      difficulty: difficulty == null && nullToAbsent
          ? const Value.absent()
          : Value(difficulty),
      startDay: startDay == null && nullToAbsent
          ? const Value.absent()
          : Value(startDay),
      endDay:
          endDay == null && nullToAbsent ? const Value.absent() : Value(endDay),
      feeding: feeding == null && nullToAbsent
          ? const Value.absent()
          : Value(feeding),
      transport: transport == null && nullToAbsent
          ? const Value.absent()
          : Value(transport),
      clubId:
          clubId == null && nullToAbsent ? const Value.absent() : Value(clubId),
      regionId: regionId == null && nullToAbsent
          ? const Value.absent()
          : Value(regionId),
      hikeStatusId: hikeStatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(hikeStatusId),
      creationDate: creationDate == null && nullToAbsent
          ? const Value.absent()
          : Value(creationDate),
      publicationDate: publicationDate == null && nullToAbsent
          ? const Value.absent()
          : Value(publicationDate),
      priceId: priceId == null && nullToAbsent
          ? const Value.absent()
          : Value(priceId),
      equipment: equipment == null && nullToAbsent
          ? const Value.absent()
          : Value(equipment),
      meetingPoint: meetingPoint == null && nullToAbsent
          ? const Value.absent()
          : Value(meetingPoint),
    );
  }

  Hike copyWith(
          {int hikeId,
          String description,
          String imageUrl,
          String location,
          int maxParticipants,
          int difficulty,
          String startDay,
          String endDay,
          String feeding,
          String transport,
          int clubId,
          int regionId,
          int hikeStatusId,
          String creationDate,
          String publicationDate,
          int priceId,
          String equipment,
          String meetingPoint}) =>
      Hike(
        hikeId: hikeId ?? this.hikeId,
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl,
        location: location ?? this.location,
        maxParticipants: maxParticipants ?? this.maxParticipants,
        difficulty: difficulty ?? this.difficulty,
        startDay: startDay ?? this.startDay,
        endDay: endDay ?? this.endDay,
        feeding: feeding ?? this.feeding,
        transport: transport ?? this.transport,
        clubId: clubId ?? this.clubId,
        regionId: regionId ?? this.regionId,
        hikeStatusId: hikeStatusId ?? this.hikeStatusId,
        creationDate: creationDate ?? this.creationDate,
        publicationDate: publicationDate ?? this.publicationDate,
        priceId: priceId ?? this.priceId,
        equipment: equipment ?? this.equipment,
        meetingPoint: meetingPoint ?? this.meetingPoint,
      );
  @override
  String toString() {
    return (StringBuffer('Hike(')
          ..write('hikeId: $hikeId, ')
          ..write('description: $description, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('location: $location, ')
          ..write('maxParticipants: $maxParticipants, ')
          ..write('difficulty: $difficulty, ')
          ..write('startDay: $startDay, ')
          ..write('endDay: $endDay, ')
          ..write('feeding: $feeding, ')
          ..write('transport: $transport, ')
          ..write('clubId: $clubId, ')
          ..write('regionId: $regionId, ')
          ..write('hikeStatusId: $hikeStatusId, ')
          ..write('creationDate: $creationDate, ')
          ..write('publicationDate: $publicationDate, ')
          ..write('priceId: $priceId, ')
          ..write('equipment: $equipment, ')
          ..write('meetingPoint: $meetingPoint')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      hikeId.hashCode,
      $mrjc(
          description.hashCode,
          $mrjc(
              imageUrl.hashCode,
              $mrjc(
                  location.hashCode,
                  $mrjc(
                      maxParticipants.hashCode,
                      $mrjc(
                          difficulty.hashCode,
                          $mrjc(
                              startDay.hashCode,
                              $mrjc(
                                  endDay.hashCode,
                                  $mrjc(
                                      feeding.hashCode,
                                      $mrjc(
                                          transport.hashCode,
                                          $mrjc(
                                              clubId.hashCode,
                                              $mrjc(
                                                  regionId.hashCode,
                                                  $mrjc(
                                                      hikeStatusId.hashCode,
                                                      $mrjc(
                                                          creationDate.hashCode,
                                                          $mrjc(
                                                              publicationDate
                                                                  .hashCode,
                                                              $mrjc(
                                                                  priceId
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      equipment
                                                                          .hashCode,
                                                                      meetingPoint
                                                                          .hashCode))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Hike &&
          other.hikeId == this.hikeId &&
          other.description == this.description &&
          other.imageUrl == this.imageUrl &&
          other.location == this.location &&
          other.maxParticipants == this.maxParticipants &&
          other.difficulty == this.difficulty &&
          other.startDay == this.startDay &&
          other.endDay == this.endDay &&
          other.feeding == this.feeding &&
          other.transport == this.transport &&
          other.clubId == this.clubId &&
          other.regionId == this.regionId &&
          other.hikeStatusId == this.hikeStatusId &&
          other.creationDate == this.creationDate &&
          other.publicationDate == this.publicationDate &&
          other.priceId == this.priceId &&
          other.equipment == this.equipment &&
          other.meetingPoint == this.meetingPoint);
}

class HikesCompanion extends UpdateCompanion<Hike> {
  final Value<int> hikeId;
  final Value<String> description;
  final Value<String> imageUrl;
  final Value<String> location;
  final Value<int> maxParticipants;
  final Value<int> difficulty;
  final Value<String> startDay;
  final Value<String> endDay;
  final Value<String> feeding;
  final Value<String> transport;
  final Value<int> clubId;
  final Value<int> regionId;
  final Value<int> hikeStatusId;
  final Value<String> creationDate;
  final Value<String> publicationDate;
  final Value<int> priceId;
  final Value<String> equipment;
  final Value<String> meetingPoint;
  const HikesCompanion({
    this.hikeId = const Value.absent(),
    this.description = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.location = const Value.absent(),
    this.maxParticipants = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.startDay = const Value.absent(),
    this.endDay = const Value.absent(),
    this.feeding = const Value.absent(),
    this.transport = const Value.absent(),
    this.clubId = const Value.absent(),
    this.regionId = const Value.absent(),
    this.hikeStatusId = const Value.absent(),
    this.creationDate = const Value.absent(),
    this.publicationDate = const Value.absent(),
    this.priceId = const Value.absent(),
    this.equipment = const Value.absent(),
    this.meetingPoint = const Value.absent(),
  });
  HikesCompanion.insert({
    @required int hikeId,
    @required String description,
    @required String imageUrl,
    @required String location,
    @required int maxParticipants,
    @required int difficulty,
    @required String startDay,
    @required String endDay,
    @required String feeding,
    @required String transport,
    @required int clubId,
    @required int regionId,
    @required int hikeStatusId,
    @required String creationDate,
    @required String publicationDate,
    @required int priceId,
    @required String equipment,
    @required String meetingPoint,
  })  : hikeId = Value(hikeId),
        description = Value(description),
        imageUrl = Value(imageUrl),
        location = Value(location),
        maxParticipants = Value(maxParticipants),
        difficulty = Value(difficulty),
        startDay = Value(startDay),
        endDay = Value(endDay),
        feeding = Value(feeding),
        transport = Value(transport),
        clubId = Value(clubId),
        regionId = Value(regionId),
        hikeStatusId = Value(hikeStatusId),
        creationDate = Value(creationDate),
        publicationDate = Value(publicationDate),
        priceId = Value(priceId),
        equipment = Value(equipment),
        meetingPoint = Value(meetingPoint);
  HikesCompanion copyWith(
      {Value<int> hikeId,
      Value<String> description,
      Value<String> imageUrl,
      Value<String> location,
      Value<int> maxParticipants,
      Value<int> difficulty,
      Value<String> startDay,
      Value<String> endDay,
      Value<String> feeding,
      Value<String> transport,
      Value<int> clubId,
      Value<int> regionId,
      Value<int> hikeStatusId,
      Value<String> creationDate,
      Value<String> publicationDate,
      Value<int> priceId,
      Value<String> equipment,
      Value<String> meetingPoint}) {
    return HikesCompanion(
      hikeId: hikeId ?? this.hikeId,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      location: location ?? this.location,
      maxParticipants: maxParticipants ?? this.maxParticipants,
      difficulty: difficulty ?? this.difficulty,
      startDay: startDay ?? this.startDay,
      endDay: endDay ?? this.endDay,
      feeding: feeding ?? this.feeding,
      transport: transport ?? this.transport,
      clubId: clubId ?? this.clubId,
      regionId: regionId ?? this.regionId,
      hikeStatusId: hikeStatusId ?? this.hikeStatusId,
      creationDate: creationDate ?? this.creationDate,
      publicationDate: publicationDate ?? this.publicationDate,
      priceId: priceId ?? this.priceId,
      equipment: equipment ?? this.equipment,
      meetingPoint: meetingPoint ?? this.meetingPoint,
    );
  }
}

class $HikesTable extends Hikes with TableInfo<$HikesTable, Hike> {
  final GeneratedDatabase _db;
  final String _alias;
  $HikesTable(this._db, [this._alias]);
  final VerificationMeta _hikeIdMeta = const VerificationMeta('hikeId');
  GeneratedIntColumn _hikeId;
  @override
  GeneratedIntColumn get hikeId => _hikeId ??= _constructHikeId();
  GeneratedIntColumn _constructHikeId() {
    return GeneratedIntColumn(
      'hike_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
  GeneratedTextColumn _imageUrl;
  @override
  GeneratedTextColumn get imageUrl => _imageUrl ??= _constructImageUrl();
  GeneratedTextColumn _constructImageUrl() {
    return GeneratedTextColumn(
      'image_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _locationMeta = const VerificationMeta('location');
  GeneratedTextColumn _location;
  @override
  GeneratedTextColumn get location => _location ??= _constructLocation();
  GeneratedTextColumn _constructLocation() {
    return GeneratedTextColumn(
      'location',
      $tableName,
      false,
    );
  }

  final VerificationMeta _maxParticipantsMeta =
      const VerificationMeta('maxParticipants');
  GeneratedIntColumn _maxParticipants;
  @override
  GeneratedIntColumn get maxParticipants =>
      _maxParticipants ??= _constructMaxParticipants();
  GeneratedIntColumn _constructMaxParticipants() {
    return GeneratedIntColumn(
      'max_participants',
      $tableName,
      false,
    );
  }

  final VerificationMeta _difficultyMeta = const VerificationMeta('difficulty');
  GeneratedIntColumn _difficulty;
  @override
  GeneratedIntColumn get difficulty => _difficulty ??= _constructDifficulty();
  GeneratedIntColumn _constructDifficulty() {
    return GeneratedIntColumn(
      'difficulty',
      $tableName,
      false,
    );
  }

  final VerificationMeta _startDayMeta = const VerificationMeta('startDay');
  GeneratedTextColumn _startDay;
  @override
  GeneratedTextColumn get startDay => _startDay ??= _constructStartDay();
  GeneratedTextColumn _constructStartDay() {
    return GeneratedTextColumn(
      'start_day',
      $tableName,
      false,
    );
  }

  final VerificationMeta _endDayMeta = const VerificationMeta('endDay');
  GeneratedTextColumn _endDay;
  @override
  GeneratedTextColumn get endDay => _endDay ??= _constructEndDay();
  GeneratedTextColumn _constructEndDay() {
    return GeneratedTextColumn(
      'end_day',
      $tableName,
      false,
    );
  }

  final VerificationMeta _feedingMeta = const VerificationMeta('feeding');
  GeneratedTextColumn _feeding;
  @override
  GeneratedTextColumn get feeding => _feeding ??= _constructFeeding();
  GeneratedTextColumn _constructFeeding() {
    return GeneratedTextColumn(
      'feeding',
      $tableName,
      false,
    );
  }

  final VerificationMeta _transportMeta = const VerificationMeta('transport');
  GeneratedTextColumn _transport;
  @override
  GeneratedTextColumn get transport => _transport ??= _constructTransport();
  GeneratedTextColumn _constructTransport() {
    return GeneratedTextColumn(
      'transport',
      $tableName,
      false,
    );
  }

  final VerificationMeta _clubIdMeta = const VerificationMeta('clubId');
  GeneratedIntColumn _clubId;
  @override
  GeneratedIntColumn get clubId => _clubId ??= _constructClubId();
  GeneratedIntColumn _constructClubId() {
    return GeneratedIntColumn(
      'club_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _regionIdMeta = const VerificationMeta('regionId');
  GeneratedIntColumn _regionId;
  @override
  GeneratedIntColumn get regionId => _regionId ??= _constructRegionId();
  GeneratedIntColumn _constructRegionId() {
    return GeneratedIntColumn(
      'region_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _hikeStatusIdMeta =
      const VerificationMeta('hikeStatusId');
  GeneratedIntColumn _hikeStatusId;
  @override
  GeneratedIntColumn get hikeStatusId =>
      _hikeStatusId ??= _constructHikeStatusId();
  GeneratedIntColumn _constructHikeStatusId() {
    return GeneratedIntColumn(
      'hike_status_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _creationDateMeta =
      const VerificationMeta('creationDate');
  GeneratedTextColumn _creationDate;
  @override
  GeneratedTextColumn get creationDate =>
      _creationDate ??= _constructCreationDate();
  GeneratedTextColumn _constructCreationDate() {
    return GeneratedTextColumn(
      'creation_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _publicationDateMeta =
      const VerificationMeta('publicationDate');
  GeneratedTextColumn _publicationDate;
  @override
  GeneratedTextColumn get publicationDate =>
      _publicationDate ??= _constructPublicationDate();
  GeneratedTextColumn _constructPublicationDate() {
    return GeneratedTextColumn(
      'publication_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _priceIdMeta = const VerificationMeta('priceId');
  GeneratedIntColumn _priceId;
  @override
  GeneratedIntColumn get priceId => _priceId ??= _constructPriceId();
  GeneratedIntColumn _constructPriceId() {
    return GeneratedIntColumn(
      'price_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _equipmentMeta = const VerificationMeta('equipment');
  GeneratedTextColumn _equipment;
  @override
  GeneratedTextColumn get equipment => _equipment ??= _constructEquipment();
  GeneratedTextColumn _constructEquipment() {
    return GeneratedTextColumn(
      'equipment',
      $tableName,
      false,
    );
  }

  final VerificationMeta _meetingPointMeta =
      const VerificationMeta('meetingPoint');
  GeneratedTextColumn _meetingPoint;
  @override
  GeneratedTextColumn get meetingPoint =>
      _meetingPoint ??= _constructMeetingPoint();
  GeneratedTextColumn _constructMeetingPoint() {
    return GeneratedTextColumn(
      'meeting_point',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        hikeId,
        description,
        imageUrl,
        location,
        maxParticipants,
        difficulty,
        startDay,
        endDay,
        feeding,
        transport,
        clubId,
        regionId,
        hikeStatusId,
        creationDate,
        publicationDate,
        priceId,
        equipment,
        meetingPoint
      ];
  @override
  $HikesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'hikes';
  @override
  final String actualTableName = 'hikes';
  @override
  VerificationContext validateIntegrity(HikesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.hikeId.present) {
      context.handle(
          _hikeIdMeta, hikeId.isAcceptableValue(d.hikeId.value, _hikeIdMeta));
    } else if (isInserting) {
      context.missing(_hikeIdMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (d.imageUrl.present) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableValue(d.imageUrl.value, _imageUrlMeta));
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (d.location.present) {
      context.handle(_locationMeta,
          location.isAcceptableValue(d.location.value, _locationMeta));
    } else if (isInserting) {
      context.missing(_locationMeta);
    }
    if (d.maxParticipants.present) {
      context.handle(
          _maxParticipantsMeta,
          maxParticipants.isAcceptableValue(
              d.maxParticipants.value, _maxParticipantsMeta));
    } else if (isInserting) {
      context.missing(_maxParticipantsMeta);
    }
    if (d.difficulty.present) {
      context.handle(_difficultyMeta,
          difficulty.isAcceptableValue(d.difficulty.value, _difficultyMeta));
    } else if (isInserting) {
      context.missing(_difficultyMeta);
    }
    if (d.startDay.present) {
      context.handle(_startDayMeta,
          startDay.isAcceptableValue(d.startDay.value, _startDayMeta));
    } else if (isInserting) {
      context.missing(_startDayMeta);
    }
    if (d.endDay.present) {
      context.handle(
          _endDayMeta, endDay.isAcceptableValue(d.endDay.value, _endDayMeta));
    } else if (isInserting) {
      context.missing(_endDayMeta);
    }
    if (d.feeding.present) {
      context.handle(_feedingMeta,
          feeding.isAcceptableValue(d.feeding.value, _feedingMeta));
    } else if (isInserting) {
      context.missing(_feedingMeta);
    }
    if (d.transport.present) {
      context.handle(_transportMeta,
          transport.isAcceptableValue(d.transport.value, _transportMeta));
    } else if (isInserting) {
      context.missing(_transportMeta);
    }
    if (d.clubId.present) {
      context.handle(
          _clubIdMeta, clubId.isAcceptableValue(d.clubId.value, _clubIdMeta));
    } else if (isInserting) {
      context.missing(_clubIdMeta);
    }
    if (d.regionId.present) {
      context.handle(_regionIdMeta,
          regionId.isAcceptableValue(d.regionId.value, _regionIdMeta));
    } else if (isInserting) {
      context.missing(_regionIdMeta);
    }
    if (d.hikeStatusId.present) {
      context.handle(
          _hikeStatusIdMeta,
          hikeStatusId.isAcceptableValue(
              d.hikeStatusId.value, _hikeStatusIdMeta));
    } else if (isInserting) {
      context.missing(_hikeStatusIdMeta);
    }
    if (d.creationDate.present) {
      context.handle(
          _creationDateMeta,
          creationDate.isAcceptableValue(
              d.creationDate.value, _creationDateMeta));
    } else if (isInserting) {
      context.missing(_creationDateMeta);
    }
    if (d.publicationDate.present) {
      context.handle(
          _publicationDateMeta,
          publicationDate.isAcceptableValue(
              d.publicationDate.value, _publicationDateMeta));
    } else if (isInserting) {
      context.missing(_publicationDateMeta);
    }
    if (d.priceId.present) {
      context.handle(_priceIdMeta,
          priceId.isAcceptableValue(d.priceId.value, _priceIdMeta));
    } else if (isInserting) {
      context.missing(_priceIdMeta);
    }
    if (d.equipment.present) {
      context.handle(_equipmentMeta,
          equipment.isAcceptableValue(d.equipment.value, _equipmentMeta));
    } else if (isInserting) {
      context.missing(_equipmentMeta);
    }
    if (d.meetingPoint.present) {
      context.handle(
          _meetingPointMeta,
          meetingPoint.isAcceptableValue(
              d.meetingPoint.value, _meetingPointMeta));
    } else if (isInserting) {
      context.missing(_meetingPointMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {hikeId};
  @override
  Hike map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Hike.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(HikesCompanion d) {
    final map = <String, Variable>{};
    if (d.hikeId.present) {
      map['hike_id'] = Variable<int, IntType>(d.hikeId.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    if (d.imageUrl.present) {
      map['image_url'] = Variable<String, StringType>(d.imageUrl.value);
    }
    if (d.location.present) {
      map['location'] = Variable<String, StringType>(d.location.value);
    }
    if (d.maxParticipants.present) {
      map['max_participants'] = Variable<int, IntType>(d.maxParticipants.value);
    }
    if (d.difficulty.present) {
      map['difficulty'] = Variable<int, IntType>(d.difficulty.value);
    }
    if (d.startDay.present) {
      map['start_day'] = Variable<String, StringType>(d.startDay.value);
    }
    if (d.endDay.present) {
      map['end_day'] = Variable<String, StringType>(d.endDay.value);
    }
    if (d.feeding.present) {
      map['feeding'] = Variable<String, StringType>(d.feeding.value);
    }
    if (d.transport.present) {
      map['transport'] = Variable<String, StringType>(d.transport.value);
    }
    if (d.clubId.present) {
      map['club_id'] = Variable<int, IntType>(d.clubId.value);
    }
    if (d.regionId.present) {
      map['region_id'] = Variable<int, IntType>(d.regionId.value);
    }
    if (d.hikeStatusId.present) {
      map['hike_status_id'] = Variable<int, IntType>(d.hikeStatusId.value);
    }
    if (d.creationDate.present) {
      map['creation_date'] = Variable<String, StringType>(d.creationDate.value);
    }
    if (d.publicationDate.present) {
      map['publication_date'] =
          Variable<String, StringType>(d.publicationDate.value);
    }
    if (d.priceId.present) {
      map['price_id'] = Variable<int, IntType>(d.priceId.value);
    }
    if (d.equipment.present) {
      map['equipment'] = Variable<String, StringType>(d.equipment.value);
    }
    if (d.meetingPoint.present) {
      map['meeting_point'] = Variable<String, StringType>(d.meetingPoint.value);
    }
    return map;
  }

  @override
  $HikesTable createAlias(String alias) {
    return $HikesTable(_db, alias);
  }
}

class Day extends DataClass implements Insertable<Day> {
  final int dayId;
  final String day;
  final int rank;
  final String program;
  final int hikeId;
  Day(
      {@required this.dayId,
      @required this.day,
      @required this.rank,
      @required this.program,
      @required this.hikeId});
  factory Day.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Day(
      dayId: intType.mapFromDatabaseResponse(data['${effectivePrefix}day_id']),
      day: stringType.mapFromDatabaseResponse(data['${effectivePrefix}day']),
      rank: intType.mapFromDatabaseResponse(data['${effectivePrefix}rank']),
      program:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}program']),
      hikeId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}hike_id']),
    );
  }
  factory Day.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Day(
      dayId: serializer.fromJson<int>(json['dayId']),
      day: serializer.fromJson<String>(json['day']),
      rank: serializer.fromJson<int>(json['rank']),
      program: serializer.fromJson<String>(json['program']),
      hikeId: serializer.fromJson<int>(json['hikeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'dayId': serializer.toJson<int>(dayId),
      'day': serializer.toJson<String>(day),
      'rank': serializer.toJson<int>(rank),
      'program': serializer.toJson<String>(program),
      'hikeId': serializer.toJson<int>(hikeId),
    };
  }

  @override
  DaysCompanion createCompanion(bool nullToAbsent) {
    return DaysCompanion(
      dayId:
          dayId == null && nullToAbsent ? const Value.absent() : Value(dayId),
      day: day == null && nullToAbsent ? const Value.absent() : Value(day),
      rank: rank == null && nullToAbsent ? const Value.absent() : Value(rank),
      program: program == null && nullToAbsent
          ? const Value.absent()
          : Value(program),
      hikeId:
          hikeId == null && nullToAbsent ? const Value.absent() : Value(hikeId),
    );
  }

  Day copyWith({int dayId, String day, int rank, String program, int hikeId}) =>
      Day(
        dayId: dayId ?? this.dayId,
        day: day ?? this.day,
        rank: rank ?? this.rank,
        program: program ?? this.program,
        hikeId: hikeId ?? this.hikeId,
      );
  @override
  String toString() {
    return (StringBuffer('Day(')
          ..write('dayId: $dayId, ')
          ..write('day: $day, ')
          ..write('rank: $rank, ')
          ..write('program: $program, ')
          ..write('hikeId: $hikeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      dayId.hashCode,
      $mrjc(day.hashCode,
          $mrjc(rank.hashCode, $mrjc(program.hashCode, hikeId.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Day &&
          other.dayId == this.dayId &&
          other.day == this.day &&
          other.rank == this.rank &&
          other.program == this.program &&
          other.hikeId == this.hikeId);
}

class DaysCompanion extends UpdateCompanion<Day> {
  final Value<int> dayId;
  final Value<String> day;
  final Value<int> rank;
  final Value<String> program;
  final Value<int> hikeId;
  const DaysCompanion({
    this.dayId = const Value.absent(),
    this.day = const Value.absent(),
    this.rank = const Value.absent(),
    this.program = const Value.absent(),
    this.hikeId = const Value.absent(),
  });
  DaysCompanion.insert({
    @required int dayId,
    @required String day,
    @required int rank,
    @required String program,
    @required int hikeId,
  })  : dayId = Value(dayId),
        day = Value(day),
        rank = Value(rank),
        program = Value(program),
        hikeId = Value(hikeId);
  DaysCompanion copyWith(
      {Value<int> dayId,
      Value<String> day,
      Value<int> rank,
      Value<String> program,
      Value<int> hikeId}) {
    return DaysCompanion(
      dayId: dayId ?? this.dayId,
      day: day ?? this.day,
      rank: rank ?? this.rank,
      program: program ?? this.program,
      hikeId: hikeId ?? this.hikeId,
    );
  }
}

class $DaysTable extends Days with TableInfo<$DaysTable, Day> {
  final GeneratedDatabase _db;
  final String _alias;
  $DaysTable(this._db, [this._alias]);
  final VerificationMeta _dayIdMeta = const VerificationMeta('dayId');
  GeneratedIntColumn _dayId;
  @override
  GeneratedIntColumn get dayId => _dayId ??= _constructDayId();
  GeneratedIntColumn _constructDayId() {
    return GeneratedIntColumn(
      'day_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dayMeta = const VerificationMeta('day');
  GeneratedTextColumn _day;
  @override
  GeneratedTextColumn get day => _day ??= _constructDay();
  GeneratedTextColumn _constructDay() {
    return GeneratedTextColumn(
      'day',
      $tableName,
      false,
    );
  }

  final VerificationMeta _rankMeta = const VerificationMeta('rank');
  GeneratedIntColumn _rank;
  @override
  GeneratedIntColumn get rank => _rank ??= _constructRank();
  GeneratedIntColumn _constructRank() {
    return GeneratedIntColumn(
      'rank',
      $tableName,
      false,
    );
  }

  final VerificationMeta _programMeta = const VerificationMeta('program');
  GeneratedTextColumn _program;
  @override
  GeneratedTextColumn get program => _program ??= _constructProgram();
  GeneratedTextColumn _constructProgram() {
    return GeneratedTextColumn(
      'program',
      $tableName,
      false,
    );
  }

  final VerificationMeta _hikeIdMeta = const VerificationMeta('hikeId');
  GeneratedIntColumn _hikeId;
  @override
  GeneratedIntColumn get hikeId => _hikeId ??= _constructHikeId();
  GeneratedIntColumn _constructHikeId() {
    return GeneratedIntColumn(
      'hike_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [dayId, day, rank, program, hikeId];
  @override
  $DaysTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'days';
  @override
  final String actualTableName = 'days';
  @override
  VerificationContext validateIntegrity(DaysCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.dayId.present) {
      context.handle(
          _dayIdMeta, dayId.isAcceptableValue(d.dayId.value, _dayIdMeta));
    } else if (isInserting) {
      context.missing(_dayIdMeta);
    }
    if (d.day.present) {
      context.handle(_dayMeta, day.isAcceptableValue(d.day.value, _dayMeta));
    } else if (isInserting) {
      context.missing(_dayMeta);
    }
    if (d.rank.present) {
      context.handle(
          _rankMeta, rank.isAcceptableValue(d.rank.value, _rankMeta));
    } else if (isInserting) {
      context.missing(_rankMeta);
    }
    if (d.program.present) {
      context.handle(_programMeta,
          program.isAcceptableValue(d.program.value, _programMeta));
    } else if (isInserting) {
      context.missing(_programMeta);
    }
    if (d.hikeId.present) {
      context.handle(
          _hikeIdMeta, hikeId.isAcceptableValue(d.hikeId.value, _hikeIdMeta));
    } else if (isInserting) {
      context.missing(_hikeIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {dayId};
  @override
  Day map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Day.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(DaysCompanion d) {
    final map = <String, Variable>{};
    if (d.dayId.present) {
      map['day_id'] = Variable<int, IntType>(d.dayId.value);
    }
    if (d.day.present) {
      map['day'] = Variable<String, StringType>(d.day.value);
    }
    if (d.rank.present) {
      map['rank'] = Variable<int, IntType>(d.rank.value);
    }
    if (d.program.present) {
      map['program'] = Variable<String, StringType>(d.program.value);
    }
    if (d.hikeId.present) {
      map['hike_id'] = Variable<int, IntType>(d.hikeId.value);
    }
    return map;
  }

  @override
  $DaysTable createAlias(String alias) {
    return $DaysTable(_db, alias);
  }
}

class Price extends DataClass implements Insertable<Price> {
  final int priceId;
  final String includedInPrice;
  final String notIncludedInPrice;
  Price(
      {@required this.priceId,
      @required this.includedInPrice,
      @required this.notIncludedInPrice});
  factory Price.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Price(
      priceId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}price_id']),
      includedInPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}included_in_price']),
      notIncludedInPrice: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}not_included_in_price']),
    );
  }
  factory Price.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Price(
      priceId: serializer.fromJson<int>(json['priceId']),
      includedInPrice: serializer.fromJson<String>(json['includedInPrice']),
      notIncludedInPrice:
          serializer.fromJson<String>(json['notIncludedInPrice']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'priceId': serializer.toJson<int>(priceId),
      'includedInPrice': serializer.toJson<String>(includedInPrice),
      'notIncludedInPrice': serializer.toJson<String>(notIncludedInPrice),
    };
  }

  @override
  PricesCompanion createCompanion(bool nullToAbsent) {
    return PricesCompanion(
      priceId: priceId == null && nullToAbsent
          ? const Value.absent()
          : Value(priceId),
      includedInPrice: includedInPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(includedInPrice),
      notIncludedInPrice: notIncludedInPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(notIncludedInPrice),
    );
  }

  Price copyWith(
          {int priceId, String includedInPrice, String notIncludedInPrice}) =>
      Price(
        priceId: priceId ?? this.priceId,
        includedInPrice: includedInPrice ?? this.includedInPrice,
        notIncludedInPrice: notIncludedInPrice ?? this.notIncludedInPrice,
      );
  @override
  String toString() {
    return (StringBuffer('Price(')
          ..write('priceId: $priceId, ')
          ..write('includedInPrice: $includedInPrice, ')
          ..write('notIncludedInPrice: $notIncludedInPrice')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(priceId.hashCode,
      $mrjc(includedInPrice.hashCode, notIncludedInPrice.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Price &&
          other.priceId == this.priceId &&
          other.includedInPrice == this.includedInPrice &&
          other.notIncludedInPrice == this.notIncludedInPrice);
}

class PricesCompanion extends UpdateCompanion<Price> {
  final Value<int> priceId;
  final Value<String> includedInPrice;
  final Value<String> notIncludedInPrice;
  const PricesCompanion({
    this.priceId = const Value.absent(),
    this.includedInPrice = const Value.absent(),
    this.notIncludedInPrice = const Value.absent(),
  });
  PricesCompanion.insert({
    @required int priceId,
    @required String includedInPrice,
    @required String notIncludedInPrice,
  })  : priceId = Value(priceId),
        includedInPrice = Value(includedInPrice),
        notIncludedInPrice = Value(notIncludedInPrice);
  PricesCompanion copyWith(
      {Value<int> priceId,
      Value<String> includedInPrice,
      Value<String> notIncludedInPrice}) {
    return PricesCompanion(
      priceId: priceId ?? this.priceId,
      includedInPrice: includedInPrice ?? this.includedInPrice,
      notIncludedInPrice: notIncludedInPrice ?? this.notIncludedInPrice,
    );
  }
}

class $PricesTable extends Prices with TableInfo<$PricesTable, Price> {
  final GeneratedDatabase _db;
  final String _alias;
  $PricesTable(this._db, [this._alias]);
  final VerificationMeta _priceIdMeta = const VerificationMeta('priceId');
  GeneratedIntColumn _priceId;
  @override
  GeneratedIntColumn get priceId => _priceId ??= _constructPriceId();
  GeneratedIntColumn _constructPriceId() {
    return GeneratedIntColumn(
      'price_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _includedInPriceMeta =
      const VerificationMeta('includedInPrice');
  GeneratedTextColumn _includedInPrice;
  @override
  GeneratedTextColumn get includedInPrice =>
      _includedInPrice ??= _constructIncludedInPrice();
  GeneratedTextColumn _constructIncludedInPrice() {
    return GeneratedTextColumn(
      'included_in_price',
      $tableName,
      false,
    );
  }

  final VerificationMeta _notIncludedInPriceMeta =
      const VerificationMeta('notIncludedInPrice');
  GeneratedTextColumn _notIncludedInPrice;
  @override
  GeneratedTextColumn get notIncludedInPrice =>
      _notIncludedInPrice ??= _constructNotIncludedInPrice();
  GeneratedTextColumn _constructNotIncludedInPrice() {
    return GeneratedTextColumn(
      'not_included_in_price',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [priceId, includedInPrice, notIncludedInPrice];
  @override
  $PricesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'prices';
  @override
  final String actualTableName = 'prices';
  @override
  VerificationContext validateIntegrity(PricesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.priceId.present) {
      context.handle(_priceIdMeta,
          priceId.isAcceptableValue(d.priceId.value, _priceIdMeta));
    } else if (isInserting) {
      context.missing(_priceIdMeta);
    }
    if (d.includedInPrice.present) {
      context.handle(
          _includedInPriceMeta,
          includedInPrice.isAcceptableValue(
              d.includedInPrice.value, _includedInPriceMeta));
    } else if (isInserting) {
      context.missing(_includedInPriceMeta);
    }
    if (d.notIncludedInPrice.present) {
      context.handle(
          _notIncludedInPriceMeta,
          notIncludedInPrice.isAcceptableValue(
              d.notIncludedInPrice.value, _notIncludedInPriceMeta));
    } else if (isInserting) {
      context.missing(_notIncludedInPriceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {priceId};
  @override
  Price map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Price.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(PricesCompanion d) {
    final map = <String, Variable>{};
    if (d.priceId.present) {
      map['price_id'] = Variable<int, IntType>(d.priceId.value);
    }
    if (d.includedInPrice.present) {
      map['included_in_price'] =
          Variable<String, StringType>(d.includedInPrice.value);
    }
    if (d.notIncludedInPrice.present) {
      map['not_included_in_price'] =
          Variable<String, StringType>(d.notIncludedInPrice.value);
    }
    return map;
  }

  @override
  $PricesTable createAlias(String alias) {
    return $PricesTable(_db, alias);
  }
}

class SelectedPriceCategory extends DataClass
    implements Insertable<SelectedPriceCategory> {
  final int priceId;
  final int priceCategoryId;
  final String price;
  SelectedPriceCategory(
      {@required this.priceId,
      @required this.priceCategoryId,
      @required this.price});
  factory SelectedPriceCategory.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return SelectedPriceCategory(
      priceId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}price_id']),
      priceCategoryId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}price_category_id']),
      price:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}price']),
    );
  }
  factory SelectedPriceCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SelectedPriceCategory(
      priceId: serializer.fromJson<int>(json['priceId']),
      priceCategoryId: serializer.fromJson<int>(json['priceCategoryId']),
      price: serializer.fromJson<String>(json['price']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'priceId': serializer.toJson<int>(priceId),
      'priceCategoryId': serializer.toJson<int>(priceCategoryId),
      'price': serializer.toJson<String>(price),
    };
  }

  @override
  SelectedPriceCategoriesCompanion createCompanion(bool nullToAbsent) {
    return SelectedPriceCategoriesCompanion(
      priceId: priceId == null && nullToAbsent
          ? const Value.absent()
          : Value(priceId),
      priceCategoryId: priceCategoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(priceCategoryId),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
    );
  }

  SelectedPriceCategory copyWith(
          {int priceId, int priceCategoryId, String price}) =>
      SelectedPriceCategory(
        priceId: priceId ?? this.priceId,
        priceCategoryId: priceCategoryId ?? this.priceCategoryId,
        price: price ?? this.price,
      );
  @override
  String toString() {
    return (StringBuffer('SelectedPriceCategory(')
          ..write('priceId: $priceId, ')
          ..write('priceCategoryId: $priceCategoryId, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(priceId.hashCode, $mrjc(priceCategoryId.hashCode, price.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SelectedPriceCategory &&
          other.priceId == this.priceId &&
          other.priceCategoryId == this.priceCategoryId &&
          other.price == this.price);
}

class SelectedPriceCategoriesCompanion
    extends UpdateCompanion<SelectedPriceCategory> {
  final Value<int> priceId;
  final Value<int> priceCategoryId;
  final Value<String> price;
  const SelectedPriceCategoriesCompanion({
    this.priceId = const Value.absent(),
    this.priceCategoryId = const Value.absent(),
    this.price = const Value.absent(),
  });
  SelectedPriceCategoriesCompanion.insert({
    @required int priceId,
    @required int priceCategoryId,
    @required String price,
  })  : priceId = Value(priceId),
        priceCategoryId = Value(priceCategoryId),
        price = Value(price);
  SelectedPriceCategoriesCompanion copyWith(
      {Value<int> priceId, Value<int> priceCategoryId, Value<String> price}) {
    return SelectedPriceCategoriesCompanion(
      priceId: priceId ?? this.priceId,
      priceCategoryId: priceCategoryId ?? this.priceCategoryId,
      price: price ?? this.price,
    );
  }
}

class $SelectedPriceCategoriesTable extends SelectedPriceCategories
    with TableInfo<$SelectedPriceCategoriesTable, SelectedPriceCategory> {
  final GeneratedDatabase _db;
  final String _alias;
  $SelectedPriceCategoriesTable(this._db, [this._alias]);
  final VerificationMeta _priceIdMeta = const VerificationMeta('priceId');
  GeneratedIntColumn _priceId;
  @override
  GeneratedIntColumn get priceId => _priceId ??= _constructPriceId();
  GeneratedIntColumn _constructPriceId() {
    return GeneratedIntColumn(
      'price_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _priceCategoryIdMeta =
      const VerificationMeta('priceCategoryId');
  GeneratedIntColumn _priceCategoryId;
  @override
  GeneratedIntColumn get priceCategoryId =>
      _priceCategoryId ??= _constructPriceCategoryId();
  GeneratedIntColumn _constructPriceCategoryId() {
    return GeneratedIntColumn(
      'price_category_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  GeneratedTextColumn _price;
  @override
  GeneratedTextColumn get price => _price ??= _constructPrice();
  GeneratedTextColumn _constructPrice() {
    return GeneratedTextColumn(
      'price',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [priceId, priceCategoryId, price];
  @override
  $SelectedPriceCategoriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'selected_price_categories';
  @override
  final String actualTableName = 'selected_price_categories';
  @override
  VerificationContext validateIntegrity(SelectedPriceCategoriesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.priceId.present) {
      context.handle(_priceIdMeta,
          priceId.isAcceptableValue(d.priceId.value, _priceIdMeta));
    } else if (isInserting) {
      context.missing(_priceIdMeta);
    }
    if (d.priceCategoryId.present) {
      context.handle(
          _priceCategoryIdMeta,
          priceCategoryId.isAcceptableValue(
              d.priceCategoryId.value, _priceCategoryIdMeta));
    } else if (isInserting) {
      context.missing(_priceCategoryIdMeta);
    }
    if (d.price.present) {
      context.handle(
          _priceMeta, price.isAcceptableValue(d.price.value, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {priceId, priceCategoryId};
  @override
  SelectedPriceCategory map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SelectedPriceCategory.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(SelectedPriceCategoriesCompanion d) {
    final map = <String, Variable>{};
    if (d.priceId.present) {
      map['price_id'] = Variable<int, IntType>(d.priceId.value);
    }
    if (d.priceCategoryId.present) {
      map['price_category_id'] =
          Variable<int, IntType>(d.priceCategoryId.value);
    }
    if (d.price.present) {
      map['price'] = Variable<String, StringType>(d.price.value);
    }
    return map;
  }

  @override
  $SelectedPriceCategoriesTable createAlias(String alias) {
    return $SelectedPriceCategoriesTable(_db, alias);
  }
}

class PriceCategory extends DataClass implements Insertable<PriceCategory> {
  final int priceCategoryId;
  final String priceCategoryName;
  PriceCategory(
      {@required this.priceCategoryId, @required this.priceCategoryName});
  factory PriceCategory.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return PriceCategory(
      priceCategoryId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}price_category_id']),
      priceCategoryName: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}price_category_name']),
    );
  }
  factory PriceCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PriceCategory(
      priceCategoryId: serializer.fromJson<int>(json['priceCategoryId']),
      priceCategoryName: serializer.fromJson<String>(json['priceCategoryName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'priceCategoryId': serializer.toJson<int>(priceCategoryId),
      'priceCategoryName': serializer.toJson<String>(priceCategoryName),
    };
  }

  @override
  PriceCategoriesCompanion createCompanion(bool nullToAbsent) {
    return PriceCategoriesCompanion(
      priceCategoryId: priceCategoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(priceCategoryId),
      priceCategoryName: priceCategoryName == null && nullToAbsent
          ? const Value.absent()
          : Value(priceCategoryName),
    );
  }

  PriceCategory copyWith({int priceCategoryId, String priceCategoryName}) =>
      PriceCategory(
        priceCategoryId: priceCategoryId ?? this.priceCategoryId,
        priceCategoryName: priceCategoryName ?? this.priceCategoryName,
      );
  @override
  String toString() {
    return (StringBuffer('PriceCategory(')
          ..write('priceCategoryId: $priceCategoryId, ')
          ..write('priceCategoryName: $priceCategoryName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(priceCategoryId.hashCode, priceCategoryName.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PriceCategory &&
          other.priceCategoryId == this.priceCategoryId &&
          other.priceCategoryName == this.priceCategoryName);
}

class PriceCategoriesCompanion extends UpdateCompanion<PriceCategory> {
  final Value<int> priceCategoryId;
  final Value<String> priceCategoryName;
  const PriceCategoriesCompanion({
    this.priceCategoryId = const Value.absent(),
    this.priceCategoryName = const Value.absent(),
  });
  PriceCategoriesCompanion.insert({
    @required int priceCategoryId,
    @required String priceCategoryName,
  })  : priceCategoryId = Value(priceCategoryId),
        priceCategoryName = Value(priceCategoryName);
  PriceCategoriesCompanion copyWith(
      {Value<int> priceCategoryId, Value<String> priceCategoryName}) {
    return PriceCategoriesCompanion(
      priceCategoryId: priceCategoryId ?? this.priceCategoryId,
      priceCategoryName: priceCategoryName ?? this.priceCategoryName,
    );
  }
}

class $PriceCategoriesTable extends PriceCategories
    with TableInfo<$PriceCategoriesTable, PriceCategory> {
  final GeneratedDatabase _db;
  final String _alias;
  $PriceCategoriesTable(this._db, [this._alias]);
  final VerificationMeta _priceCategoryIdMeta =
      const VerificationMeta('priceCategoryId');
  GeneratedIntColumn _priceCategoryId;
  @override
  GeneratedIntColumn get priceCategoryId =>
      _priceCategoryId ??= _constructPriceCategoryId();
  GeneratedIntColumn _constructPriceCategoryId() {
    return GeneratedIntColumn(
      'price_category_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _priceCategoryNameMeta =
      const VerificationMeta('priceCategoryName');
  GeneratedTextColumn _priceCategoryName;
  @override
  GeneratedTextColumn get priceCategoryName =>
      _priceCategoryName ??= _constructPriceCategoryName();
  GeneratedTextColumn _constructPriceCategoryName() {
    return GeneratedTextColumn(
      'price_category_name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [priceCategoryId, priceCategoryName];
  @override
  $PriceCategoriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'price_categories';
  @override
  final String actualTableName = 'price_categories';
  @override
  VerificationContext validateIntegrity(PriceCategoriesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.priceCategoryId.present) {
      context.handle(
          _priceCategoryIdMeta,
          priceCategoryId.isAcceptableValue(
              d.priceCategoryId.value, _priceCategoryIdMeta));
    } else if (isInserting) {
      context.missing(_priceCategoryIdMeta);
    }
    if (d.priceCategoryName.present) {
      context.handle(
          _priceCategoryNameMeta,
          priceCategoryName.isAcceptableValue(
              d.priceCategoryName.value, _priceCategoryNameMeta));
    } else if (isInserting) {
      context.missing(_priceCategoryNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {priceCategoryId};
  @override
  PriceCategory map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PriceCategory.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(PriceCategoriesCompanion d) {
    final map = <String, Variable>{};
    if (d.priceCategoryId.present) {
      map['price_category_id'] =
          Variable<int, IntType>(d.priceCategoryId.value);
    }
    if (d.priceCategoryName.present) {
      map['price_category_name'] =
          Variable<String, StringType>(d.priceCategoryName.value);
    }
    return map;
  }

  @override
  $PriceCategoriesTable createAlias(String alias) {
    return $PriceCategoriesTable(_db, alias);
  }
}

abstract class _$RandoClubDataBase extends GeneratedDatabase {
  _$RandoClubDataBase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  $CountriesTable _countries;
  $CountriesTable get countries => _countries ??= $CountriesTable(this);
  $RegionsTable _regions;
  $RegionsTable get regions => _regions ??= $RegionsTable(this);
  $CitiesTable _cities;
  $CitiesTable get cities => _cities ??= $CitiesTable(this);
  $UserTypesTable _userTypes;
  $UserTypesTable get userTypes => _userTypes ??= $UserTypesTable(this);
  $ClubsTable _clubs;
  $ClubsTable get clubs => _clubs ??= $ClubsTable(this);
  $HikeStatusesTable _hikeStatuses;
  $HikeStatusesTable get hikeStatuses =>
      _hikeStatuses ??= $HikeStatusesTable(this);
  $HikesTable _hikes;
  $HikesTable get hikes => _hikes ??= $HikesTable(this);
  $DaysTable _days;
  $DaysTable get days => _days ??= $DaysTable(this);
  $PricesTable _prices;
  $PricesTable get prices => _prices ??= $PricesTable(this);
  $SelectedPriceCategoriesTable _selectedPriceCategories;
  $SelectedPriceCategoriesTable get selectedPriceCategories =>
      _selectedPriceCategories ??= $SelectedPriceCategoriesTable(this);
  $PriceCategoriesTable _priceCategories;
  $PriceCategoriesTable get priceCategories =>
      _priceCategories ??= $PriceCategoriesTable(this);
  UserDao _userDao;
  UserDao get userDao => _userDao ??= UserDao(this as RandoClubDataBase);
  CountryDao _countryDao;
  CountryDao get countryDao =>
      _countryDao ??= CountryDao(this as RandoClubDataBase);
  RegionDao _regionDao;
  RegionDao get regionDao =>
      _regionDao ??= RegionDao(this as RandoClubDataBase);
  CityDao _cityDao;
  CityDao get cityDao => _cityDao ??= CityDao(this as RandoClubDataBase);
  UserTypeDao _userTypeDao;
  UserTypeDao get userTypeDao =>
      _userTypeDao ??= UserTypeDao(this as RandoClubDataBase);
  ClubDao _clubDao;
  ClubDao get clubDao => _clubDao ??= ClubDao(this as RandoClubDataBase);
  HikeStatusDao _hikeStatusDao;
  HikeStatusDao get hikeStatusDao =>
      _hikeStatusDao ??= HikeStatusDao(this as RandoClubDataBase);
  HikeDao _hikeDao;
  HikeDao get hikeDao => _hikeDao ??= HikeDao(this as RandoClubDataBase);
  DayDao _dayDao;
  DayDao get dayDao => _dayDao ??= DayDao(this as RandoClubDataBase);
  PriceDao _priceDao;
  PriceDao get priceDao => _priceDao ??= PriceDao(this as RandoClubDataBase);
  SelectedPriceCategoryDao _selectedPriceCategoryDao;
  SelectedPriceCategoryDao get selectedPriceCategoryDao =>
      _selectedPriceCategoryDao ??=
          SelectedPriceCategoryDao(this as RandoClubDataBase);
  PriceCategoryDao _priceCategoryDao;
  PriceCategoryDao get priceCategoryDao =>
      _priceCategoryDao ??= PriceCategoryDao(this as RandoClubDataBase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        users,
        countries,
        regions,
        cities,
        userTypes,
        clubs,
        hikeStatuses,
        hikes,
        days,
        prices,
        selectedPriceCategories,
        priceCategories
      ];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$CountryDaoMixin on DatabaseAccessor<RandoClubDataBase> {
  $CountriesTable get countries => db.countries;
}
mixin _$RegionDaoMixin on DatabaseAccessor<RandoClubDataBase> {
  $RegionsTable get regions => db.regions;
}
mixin _$CityDaoMixin on DatabaseAccessor<RandoClubDataBase> {
  $CitiesTable get cities => db.cities;
}
mixin _$UserTypeDaoMixin on DatabaseAccessor<RandoClubDataBase> {
  $UserTypesTable get userTypes => db.userTypes;
}
mixin _$UserDaoMixin on DatabaseAccessor<RandoClubDataBase> {
  $UsersTable get users => db.users;
}
mixin _$ClubDaoMixin on DatabaseAccessor<RandoClubDataBase> {
  $ClubsTable get clubs => db.clubs;
}
mixin _$HikeStatusDaoMixin on DatabaseAccessor<RandoClubDataBase> {
  $HikeStatusesTable get hikeStatuses => db.hikeStatuses;
}
mixin _$HikeDaoMixin on DatabaseAccessor<RandoClubDataBase> {
  $HikesTable get hikes => db.hikes;
}
mixin _$DayDaoMixin on DatabaseAccessor<RandoClubDataBase> {
  $DaysTable get days => db.days;
}
mixin _$PriceDaoMixin on DatabaseAccessor<RandoClubDataBase> {
  $PricesTable get prices => db.prices;
}
mixin _$SelectedPriceCategoryDaoMixin on DatabaseAccessor<RandoClubDataBase> {
  $SelectedPriceCategoriesTable get selectedPriceCategories =>
      db.selectedPriceCategories;
}
mixin _$PriceCategoryDaoMixin on DatabaseAccessor<RandoClubDataBase> {
  $PriceCategoriesTable get priceCategories => db.priceCategories;
}
