import 'package:flutter/material.dart';

// List<String> list = <String>['One', 'Two', 'Three', 'Four', 'Five', 'Six'];


class DropDownMenu extends StatefulWidget{
  final List<String> _list;

  DropDownMenu(this._list);
  @override
  _DropDownMenuState createState() => _DropDownMenuState(_list);
}

class _DropDownMenuState extends State<DropDownMenu>{

  List<String> list;
  _DropDownMenuState(this.list);
  late String dropDownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DropdownButton<String>(
        elevation: 4,
        value: dropDownValue,
        onChanged: (String? value) {
          setState(() {
            dropDownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value){
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

}


