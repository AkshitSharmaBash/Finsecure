// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// Map<int,Color> swatch=
// {
//   2:Color(0xFF3FEAB7)
// };
void main() {
  
  runApp(MaterialApp(
    theme: ThemeData(
      primaryTextTheme:TextTheme(
       
    )),
    home: chooseAccount()
    ));
}

class chooseAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            
            GestureDetector(
               child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black,
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text("Connect bank account", textAlign: TextAlign.center,
                ),
              ),
              onTap: () => {
                print("1st Container")
              },
            )
             ,
            
            

            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text("Add Transactions Manually", textAlign: TextAlign.center,selectionColor: Colors.white),
            )
          ]),
        ),
      ),
    );
  }
}
