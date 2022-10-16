const months = {
    'января': 1,
    'февраля': 2,
    'марта': 3,
    'апреля': 4,
    'мая': 5,
    'июня': 6,
    'июля': 7,
    'августа': 8,
    'сентября': 9,
    'октября': 10,
    'ноября': 11,
    'декабря': 12
};

class Lesson {
  static const duration = 90;

  final name;
  final teacher;
  final room;
  final time;
  var date;

  var startTime;
  var endTime;

  Lesson(this.name, this.teacher, this.room, this.time, this.date) {
    final now = DateTime.now();
    var month = months[this.date.split(" ")[1].replaceAll(",", "")];
    var day = int.tryParse(this.date.split(" ")[0]);

    if (day.toString().length == 1) {
      print("0" + date.toString());
    }
    // TODO: переделать
    // if (month.length == 1) {
    //   month = int.tryParse("0" + "$month");
    // }
  }

  int timeToEnd() {
    return 1;
  }

  String timeToEndStr() {
    return "";
  }
}

void main() {
    var lesson = Lesson("Математика", "Болховитина", "412", "8:00", "8 сентября, четверг");
  }
