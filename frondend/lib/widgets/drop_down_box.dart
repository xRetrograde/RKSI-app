import 'package:flutter/material.dart';

import 'drop_down_menu.dart';



class DropDownBox extends StatefulWidget{
  final List<String> _list;
  final String _searchName;

  DropDownBox(this._searchName, this._list);

  @override
  _DropDownBoxState createState() => _DropDownBoxState(_searchName, _list);
}

class _DropDownBoxState extends State<DropDownBox>{
  List<String> list;
  String searchName;

  _DropDownBoxState(this.searchName, this.list);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 5.0,
      ),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
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
              child: Text(searchName)
          ),
          DropDownMenu(list),
        ],
      ),
    );
  }

}






