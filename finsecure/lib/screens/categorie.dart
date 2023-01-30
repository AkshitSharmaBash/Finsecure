// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, home: Scaffold(body: MyWidget())));
}

class MyWidget extends StatefulWidget {
  // const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int amount = 0;
  String date = "Today";
  dynamic iconImage = Icons.food_bank;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 110,
            color: Color(0xFF12BF88),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Row(children: [
                    Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Add a Transaction",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    )
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 20),
                      child: Icon(
                        iconImage,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                        child: Padding(
                            padding: EdgeInsets.only(top: 28, right: 20),
                            child: Text(
                              "$amount",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            )),
                        onTap: () {})
                  ],
                )
              ],
            )),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            Icon(Icons.wallet, color: Color(0xFF12BF88)),
            Text("Account")
          ]),
          Text("Wallet")
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            Icon(Icons.calendar_today, color: Color(0xFF12BF88)),
            Text(date)
          ], ),
          Text("Choose Date >")
        ]),
         
            TextField(),
          
        ElevatedButton(
          style: ButtonStyle(
          
            backgroundColor: MaterialStateProperty.all(Colors.grey),

          ),
          onPressed: (){}, 
        child: Text("Select a Category"))
        
      ],
    );
  }
}
