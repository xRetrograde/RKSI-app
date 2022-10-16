import 'package:flutter/material.dart';
import 'package:rksi_app/addaptive.dart';

class LessonBox extends StatelessWidget {

  final String _lesson;
  final String _teacherName;
  final String _time;
  final String _auditorium;

  LessonBox(this._lesson, this._teacherName, this._time, this._auditorium);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 5.0,
      ),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: const LinearGradient(colors: [
          Color(0xFF3CA1FF),
          Color(0xFFCC00FF),
        ]),
      ),
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      child: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Text(_lesson,
              style: Theme
                  .of(context)
                  .textTheme
                  .caption,
              ),
          Text(_teacherName,
            style: Theme
                .of(context)
                .textTheme
                .bodyText1,),
          Text(_auditorium,
          style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1,),
          Text(_time,
          style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1,),
        ]),
            ),
        const Expanded(
          flex: 1,
          child: Center(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.article),
              ),
            ),
        ),
      ]),
    ),
    );
  }
}

// Widget _cardData() => Column(children: <Widget>[
//   Text('Математика',
//     style: ,
//   ),
//   Text('Болховитина'),
//   Text('8:00 - 9:40 Аудитория 412'),
// ]);
