import 'package:flutter/material.dart';
import 'package:rksi_app/pages/group_and_teachers_page.dart';
import 'package:rksi_app/pages/settings_page.dart';
import 'package:rksi_app/widgets/date.dart';
import 'package:rksi_app/widgets/lesson_box.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<Text> titles = [
    Text("Настройки"),
    Text("Группы"),
    Text("Домашняя"),
  ];

  List<Widget> pages = [
    Settings(),
    Groups(),
    HomePage(),
  ];

  int myCurrentIndex = 0;
  onTapped(int index){
    if (myCurrentIndex == index) return;
    setState(() {
      myCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: titles[myCurrentIndex],
        ),
      ),
      body: pages[myCurrentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
          currentIndex: myCurrentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: "some",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: "some",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              label: "some"
            ),
          ],
            ),
    //   bottomNavigationBar: BottomNavigationBar(
    // items: const  <BottomNavigationBarItem>[
    // BottomNavigationBarItem(
    // icon: Icon(Icons.access_alarm),
    // label: "some",
    // ),
    // BottomNavigationBarItem(
    // icon: Icon(Icons.abc),
    // label: "some",
    // ),
    // BottomNavigationBarItem(
    // icon: Icon(Icons.ac_unit),
    // label: "some",
    // ),
    // ],
    // currentIndex: _selectedIndex,
    // onTap: _onItemTapped,
    // ),
    );
  }
}
