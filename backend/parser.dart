import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:requests/requests.dart';
import 'package:rksi_app/common/Discipline.dart';

const url = "http://rksi.su";

Map getScheduleStructure(Document scheduleMarkup) {
  final date = scheduleMarkup.querySelectorAll("body > b");
  final schedule = scheduleMarkup.querySelectorAll("body > p, body > hr");

  var scheduleMap = {};
  var buffer = [];
  var dateIndex = 0;

  for (var element in schedule) {
    if (element.outerHtml == '<hr>') {
      scheduleMap[date[dateIndex].text] = List.from(buffer);
      buffer.clear();
      dateIndex++;
      continue;
    }

    final parsedSchedule = element.outerHtml
        .replaceAll("<br><b>", "\n")
        .replaceAll("</b><br>", "\n")
        .replaceAll("<p>", "")
        .replaceAll("</p>", "")
        .replaceAll(",", "\n")
        .replaceAll(" ", "")
        .split("\n");

    buffer.add(Discipline(parsedSchedule[0], parsedSchedule[1],
        parsedSchedule[2], parsedSchedule[3], "1"));
  }
  return scheduleMap;

}
Future<Map> getSchedule(String searchObject, String searchValue) async{
  final searchType = {"group": "stt", "teacher": "stp"}[searchObject];
  final body = {searchObject: searchValue, searchType: "Показать!"};
  final document =  await Requests.post(url, body: body).whenComplete(() => null)
      .then((value) => parse(value.bodyBytes));
  return getScheduleStructure(document);
}

void main() async {
  const searchObject = "group";
  const searchValue = "ПОКС-44b";

  final searchType = {"group": "stt", "teacher": "stp"}[searchObject];
  final body = {searchObject: searchValue, searchType: "Показать!"};
  final document = await Requests.post(url, body: body).whenComplete(() => null)
      .then((value) => parse(value.bodyBytes));

Q
  print(getScheduleStructure(document)['26 сентября, понедельник'][0].time);
  print(getScheduleStructure(document)['26 сентября, понедельник'][0].name);
  print(getScheduleStructure(document)['26 сентября, понедельник'][0].target);
  print(getScheduleStructure(document)['26 сентября, понедельник'][0].auditory);
}
