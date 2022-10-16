import 'package:flutter/material.dart';
import 'package:rksi_app/widgets/date.dart';
import 'package:rksi_app/widgets/lesson_box.dart';
import '../widgets/drop_down_box.dart';




class Groups extends StatefulWidget {
  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: <Widget>[
      DropDownBox("По группе", ['One', 'Two', 'Three', 'Four', 'Five', 'Six']),
      DropDownBox("По преподавателю", ['One', 'Two', 'Five', 'Six']),
        ],
      ),
    );
  }
}

