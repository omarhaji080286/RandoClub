import 'dart:convert';

import 'package:randoclub/database/randoclub_database.dart';
import 'package:randoclub/services/chopper_services/randoclub_api_service.dart';

class HandleInitialLoad {

  RandoClubDataBase db ;
  CountryDao countryDao;
  RegionDao regionDao;
  CityDao cityDao;
  UserTypeDao userTypeDao;
  UserDao userDao;
  ClubDao clubDao;
  HikeStatusDao hikeStatusDao;
  HikeDao hikeDao;
  DayDao dayDao;
  PriceDao priceDao;
  SelectedPriceCategoryDao selectedPriceCategoryDao;
  PriceCategoryDao priceCategoryDao;

  HandleInitialLoad(){
    this.db = RandoClubDataBase.getInstance();
    this.countryDao =  CountryDao(db);
    this.regionDao = RegionDao(db);
    this.cityDao = CityDao(db);
    this.userTypeDao = UserTypeDao(db);
    this.userDao = UserDao(db);
    this.clubDao = ClubDao(db);
    this.hikeStatusDao = HikeStatusDao(db);
    this.hikeDao = HikeDao(db);
    this.dayDao = DayDao(db);
    this.priceDao = PriceDao(db);
    this.selectedPriceCategoryDao = SelectedPriceCategoryDao(db);
    this.priceCategoryDao = PriceCategoryDao(db);
  }

  Future<void> execute() async{

    Map jsonRequest = {
      "name" : "aze"
    };

    Map<String, dynamic> jsonResponse =
        (await RandoClubApiService.create().getInitialLoadData(json.encode(jsonRequest)))
            .body;

    updateLocalData(jsonResponse);

  }

  void updateLocalData(Map<String, dynamic> data) {

    print("HandleInitialLoad - Data handling started");

    List<dynamic> countries = data['countries'];
    List<dynamic> regions = data['regions'];
    List<dynamic> cities = data['cities'];
    List<dynamic> userTypes = data['userTypes'];
    List<dynamic> users = data['users'];
    List<dynamic> clubs = data['clubs'];
    List<dynamic> hikeStatuses = data['hikeStatuses'];
    List<dynamic> hikes = data['hikes'];
    List<dynamic> days = data['days'];
    List<dynamic> prices = data['prices'];
    List<dynamic> selectedPriceCategories = data['selectedPriceCategories'];
    List<dynamic> priceCategories = data['priceCategories'];

    _updateCountries(countries);
    _updateRegions(regions);
    _updateCities(cities);
    _updateUserTypes(userTypes);
    _updateUsers(users);
    _updateClubs(clubs);
    _updateHikeStatuses(hikeStatuses);
    _updateHikes(hikes);
    _updateDays(days);
    _updatePrices(prices);
    _updateSelectedPriceCategories(selectedPriceCategories);
    _updatePriceCategories(priceCategories);

    print("HandleInitialLoad - Data handling finished");

  }

  void _updateCountries(List countries) {
    countries.forEach((element) async {
      Country country = Country.fromJson(element);
      Country countryDB = await countryDao.getCountry(country.countryId);
      if (countryDB == null) {
        countryDao.insert(country);
      } else {
        countryDao.replace(country);
      }
    });
    print("HandleInitialLoad - countries updated : " + countries.length.toString());
  }

  void _updateRegions(List regions) {
    regions.forEach((element) async {
      Region region = Region.fromJson(element);
      Region regionDB = await regionDao.getRegion(region.regionId);
      if (regionDB == null) {
        regionDao.insert(region);
      } else {
        regionDao.replace(region);
      }
    });
    print("HandleInitialLoad - regions updated : " + regions.length.toString());
  }

  void _updateCities(List cities) {
    cities.forEach((element) async {
      City city = City.fromJson(element);
      City cityDB = await cityDao.getCity(city.cityId);
      if (cityDB == null) {
        cityDao.insert(city);
      } else {
        cityDao.replace(city);
      }
    });
    print("HandleInitialLoad - cities updated : " + cities.length.toString());
  }

  void _updateUserTypes(List userTypes) {
    userTypes.forEach((element) async {
      UserType userType = UserType.fromJson(element);
      UserType userTypeDB = await userTypeDao.getUserType(userType.userTypeId);
      if (userTypeDB == null) {
        userTypeDao.insert(userType);
      } else {
        userTypeDao.replace(userType);
      }
    });
    print("HandleInitialLoad - userTypes updated : " + userTypes.length.toString());
  }

  void _updateUsers(List users) {
    users.forEach((element) async {
      User user = User.fromJson(element);
      User userDB = await userDao.getUser(user.userId);
      if (userDB == null) {
        userDao.insert(user);
      } else {
        userDao.replace(user);
      }
    });
    print("HandleInitialLoad - users updated : " + users.length.toString());
  }

  void _updateClubs(List clubs) {
    clubs.forEach((element) async {
      Club club = Club.fromJson(element);
      Club clubDB = await clubDao.getClub(club.clubId);
      if (clubDB == null) {
        clubDao.insert(club);
      } else {
        clubDao.replace(club);
      }
    });
    print("HandleInitialLoad - clubs updated : " + clubs.length.toString());
  }

  void _updateHikeStatuses(List hikeStatuses) {
    hikeStatuses.forEach((element) async {
      HikeStatus hikeStatus = HikeStatus.fromJson(element);
      HikeStatus hikeStatusDB = await hikeStatusDao.getHikeStatus(hikeStatus.hikeStatusId);
      if (hikeStatusDB == null) {
        hikeStatusDao.insert(hikeStatus);
      } else {
        hikeStatusDao.replace(hikeStatus);
      }
    });
    print("HandleInitialLoad - hikeStatuses updated : " + hikeStatuses.length.toString());
  }

  void _updateHikes(List hikes) {
    hikes.forEach((element) async {
      Hike hike = Hike.fromJson(element);
      Hike hikeDB = await hikeDao.getHike(hike.hikeId);
      if (hikeDB == null) {
        hikeDao.insert(hike);
      } else {
        hikeDao.replace(hike);
      }
    });
    print("HandleInitialLoad - hikes updated : " + hikes.length.toString());
  }

  void _updateDays(List days) {
    days.forEach((element) async {
      Day day = Day.fromJson(element);
      Day dayDB = await dayDao.getDay(day.dayId);
      if (dayDB == null) {
        dayDao.insert(day);
      } else {
        dayDao.replace(day);
      }
    });
    print("HandleInitialLoad - days updated : " + days.length.toString());
  }

  void _updatePrices(List prices) {
    prices.forEach((element) async {
      Price price = Price.fromJson(element);
      Price priceInDb = await priceDao.getPrice(price.priceId);
      if (priceInDb == null) {
        priceDao.insert(price);
      } else {
        priceDao.replace(price);
      }
    });
    print("HandleInitialLoad - prices updated : " + prices.length.toString());
  }

  void _updateSelectedPriceCategories(List selectedPriceCategories) {
    selectedPriceCategories.forEach((element) async {
      SelectedPriceCategory selectedPriceCategory = SelectedPriceCategory.fromJson(element);
      SelectedPriceCategory selectedPriceCategoryInDb = await selectedPriceCategoryDao.getSelectedPriceCategory(selectedPriceCategory.priceId, selectedPriceCategory.priceCategoryId);
      if (selectedPriceCategoryInDb == null) {
        selectedPriceCategoryDao.insert(selectedPriceCategory);
      } else {
        selectedPriceCategoryDao.replace(selectedPriceCategory);
      }
    });
    print("HandleInitialLoad - selectedPriceCategories updated : " + selectedPriceCategories.length.toString());
  }

  void _updatePriceCategories(List priceCategories) {
    priceCategories.forEach((element) async {
      PriceCategory priceCategory = PriceCategory.fromJson(element);
      PriceCategory priceCategoryDB = await priceCategoryDao.getPriceCategory(priceCategory.priceCategoryId);
      if (priceCategoryDB == null) {
        priceCategoryDao.insert(priceCategory);
      } else {
        priceCategoryDao.replace(priceCategory);
      }
    });
    print("HandleInitialLoad - priceCategories updated : " + priceCategories.length.toString());
  }


}