// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:finsecure/screens/iconsMapping.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: Categories(),
  )));
}

var num=Random();
List<Color> myColors = [Color(0xFFFF3D00),
Color(0xFF4FC3F7),
Color(0xFFFFA726),
Color(0xFF78909C)
];


List<Widget> expenses = iconsMap.keys
    .map((key) => Container(
      decoration: BoxDecoration(border: 
      Border(top:BorderSide(
       color: Color(0xFFEEEEEE),
       width:1
      ) )
      ),
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Row(
            children: [
              Icon(
                iconsMap[key]!,
                size: 40,
                color: myColors[num.nextInt(4)],
              ),
              SizedBox(
                width: 10,
              ),
              Text(key,
              style: TextStyle(fontWeight: FontWeight.w600,
              fontSize: 15
              ),
              )
            ],
          ),
    ))
    .toList();

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child:Column(
      children: [
        Container(
            height: 50,
            color: Color(0xFFF1F3F7),
            child: Center(
                child: Text(
              "ALL CATEGORIES",
              style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w500),
            ))),
        ...expenses
      ],
    ));
  }
}
