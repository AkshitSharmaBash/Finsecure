// ignore_for_file: prefer_const_constructors

import 'package:finsecure/screens/addTransaction.dart';
import 'package:finsecure/screens/genList.dart';
import 'package:flutter/material.dart';

class Timeline extends StatefulWidget {
  final int balance;
  Timeline([this.balance = 0]);
  @override
  State<StatefulWidget> createState() {
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<Timeline> {
  List<Widget> dynamicList = [
    Container(
        
        height: 50,
        color: Color(0xFFF1F3F7),
        child: Center(
            child: Text(
          "LAST 30 DAYS",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        )))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: EdgeInsets.symmetric(horizontal: 8,vertical: 14),
            color: Color(0xFF12C48B),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Cash :",
                style: TextStyle(color:Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
                ),
                ), Text("Rs. ${widget.balance}",
                style:TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600
                ),
                
                )]),
          ),
          ...dynamicList
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF00AA70),
          onPressed: () {
            // setState(() {
            //   dynamicList.add(DynamicList(Icons.shopping_bag,"Shopping",20000));     // Passing data to constructor
            // });
            Navigator.push(
                context, (MaterialPageRoute(builder: (context) => MyWidget())));
          },
          child: Icon(Icons.add)),
    );
  }
}
