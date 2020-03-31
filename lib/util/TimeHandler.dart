class TimeHandler {
  String stringDate;
  DateTime dateTime;

  TimeHandler(String stringDate) {
    this.stringDate = stringDate;
    dateTime = DateTime.parse(stringDate);
  }

  String getDay() {
    return dateTime.day.toString();
  }

  String getMonth() {
    return dateTime.month.toString();
  }

  String getMonthInLetter() {
    String monthInLetter;
    switch (this.dateTime.month) {
      case 1:
        monthInLetter = "Jan";
        break;
      case 2:
        monthInLetter = "Fév";
        break;
      case 3:
        monthInLetter = "Mars";
        break;
      case 4:
        monthInLetter = "Avr";
        break;
      case 5:
        monthInLetter = "Mai";
        break;
      case 6:
        monthInLetter = "Juin";
        break;
      case 7:
        monthInLetter = "Juil";
        break;
      case 8:
        monthInLetter = "Août";
        break;
      case 9:
        monthInLetter = "Sept";
        break;
      case 10:
        monthInLetter = "Oct";
        break;
      case 11:
        monthInLetter = "Nov";
        break;
      case 12:
        monthInLetter = "Déc";
        break;
    }

    return monthInLetter;
  }
}
