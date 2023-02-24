// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// Map<int,Color> swatch=
// {
//   2:Color(0xFF3FEAB7)
// };
void main() {
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(),
    home: chooseAccount()
    ));
}

class chooseAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7E7E7),
      body: SafeArea(
        child: Center(
          child: Column( 
            children: [
            
            Container(
              height: 70,
              color: Color(0xFF00AA70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[ Text("Set up your Account",
                  
                style: TextStyle(color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w500
                ),
                ),
                
                ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 125),
              child: Column(
                children:[
              GestureDetector(
                 child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                  ),
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Column(children:[  Text("Bank Sync", textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,
                  )
                  ),
                  Text("Connect to your bank account",
                  style:TextStyle(color: Color(0xFFC5C5C7)))]),
                  Icon(Icons.account_balance,color: Color(0xFF00AA70),size:40)
                  ])
                ),
                onTap: () => {
                  print("1st Container")
                },
              )
               ,
              
              
            
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(10),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Column( children:[Text("Manual Input", textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Update your account manually",
                style: TextStyle(color: Color(0xFFC5C5C7)),
                )])
                 ,
                 Icon(Icons.edit,color: Color(0xFF00AA70),size: 40,)
                ]

                )

              )]),
            )
              ]),
        ),
      ),
    );
  }
}
