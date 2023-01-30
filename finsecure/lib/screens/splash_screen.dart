// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';


void main() {
    runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.amber[100],
          body:SafeArea(
           
             child: Center(
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("images/wallet-2.png" ),
                    width: 120,
                    ),

                    Text("Finsecure",
                    style: TextStyle(fontSize: 34,
                    fontWeight: FontWeight.bold),
                    ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("- One stop Place for financial security",
                    style: TextStyle(
                    fontWeight: FontWeight.w400
                    ) ,
                    ),
                  )
                ],
            ),
             )))
        ),

      );
 
}
