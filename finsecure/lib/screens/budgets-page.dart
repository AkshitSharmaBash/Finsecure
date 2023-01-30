// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: createBudget()));
}

class createBudget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child:Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.asset("images/budget.png",
          width:280),
          Text("Create your Budget")
         ],),
       )
      ),
    );
  }
}
