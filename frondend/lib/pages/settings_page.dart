import 'package:flutter/material.dart';
import 'package:rksi_app/widgets/date.dart';
import 'package:rksi_app/widgets/lesson_box.dart';
// import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 5.0,
              ),
             width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              boxShadow: [BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 4,
                  offset: Offset(0, 3)
              ),
              ]
            ),

            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Text("Темная тема")
                ),
                Expanded(
                    flex: 1,
                    child: Center(
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value){
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                          )
                    ),
                    ),
                ),

              ],
            ),

          ),
        ],
      ),
    );
  }
}
