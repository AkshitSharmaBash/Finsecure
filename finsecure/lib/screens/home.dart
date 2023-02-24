// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:finsecure/screens/budgets-page.dart';
import 'package:finsecure/screens/debts.dart';
import 'package:finsecure/screens/initialaccountsetup.dart';
import 'package:finsecure/screens/more.dart';
import 'package:finsecure/screens/timeline.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';


late int Data;
class Tabs extends StatefulWidget {
   

  Tabs([timelineData=0]){
    Data=timelineData;
  }
  @override
  State<StatefulWidget> createState() {
    return TabState();
  }
}

class TabState extends State<Tabs> {
  
  
  List<Widget> tabs = [Timeline(Data), Debts(), createBudget(), Account()];
  
  int tabNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[tabNumber], // Different Tab Views

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabNumber,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF00AA70),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: "Timeline",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Debts",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_rounded),
            label: "Budgets",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "More",
          )
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
