// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: DropdownRow(Icons.money, "Type",
          ["Transfer", "Expense","Income"])));
}

class DropdownRow extends StatefulWidget {
  final IconData? icon;
  final String? text1;
  late final List<String> items;

   DropdownRow(this.icon, this.text1,this.items, {super.key}) {}

  @override
  State<DropdownRow> createState() => _DropdownRowState();
}

class _DropdownRowState extends State<DropdownRow> {
  String? value;
  

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // Date Picker Start
        Row(
          children: [
            Icon(widget.icon, color: Color(0xFF12BF88), size: 30),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                widget.text1!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton(
            value: value,
              iconSize: 30,
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
              items: widget.items.map(buildMenuItem).toList(),
              onChanged: (value) => setState(
                () => this.value = value 
                )
                ),
        )
      ]),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(item,
          style: TextStyle()));
}
