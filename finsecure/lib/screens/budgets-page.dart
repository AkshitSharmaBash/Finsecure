// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';




class createBudget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child:Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset("images/budget-2.png",
          height: 150,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10),
            child: Text("You have no budgets",
            style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Start saving money by creating budgets and we will help you to stick to it.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF5B707D)),
            ),
          ),
         Padding(
           padding: const EdgeInsets.only(top:25),
           child: ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF12C48B)),
             padding: MaterialStateProperty.all(EdgeInsets.all(15)),
             shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
             ))
            ),
            onPressed: (){}, child: Text("Create Your First Budget")),
         )

         ],),

       )
      ),
    );
  }
}
