import 'package:flutter/material.dart';

void main(){

  runApp(
      MaterialApp(
        home: Scaffold(
          body:SafeArea(
            child: Column(
              children: [
                Image.asset("images/assets/wallet.png"),
                Text("One stop Place for financial security")
              ],
            ),)
        ),

      )
  );
}