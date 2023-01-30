// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:finsecure/screens/initialaccountsetup.dart';
import 'package:finsecure/screens/timeline.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(MaterialApp(home: Tabs()));
}

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabState();
  }
}

class TabState extends State<Tabs> {
  List<Widget> tabs = [
    Timeline()
  ];

  int tabNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[tabNumber], // Different Tab Views

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabNumber,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.timeline),
              label: "Timeline",
              backgroundColor: Colors.blue),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Debts",
              backgroundColor: Colors.blue),
          const BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_rounded),
              label: "Budgets",
              backgroundColor: Colors.blue),
          const BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: "More",
              backgroundColor: Colors.blue)
        ],
        onTap: (index) {
          setState(() {
            tabNumber = index;
          });
        },
      ),
    );
  }
}
