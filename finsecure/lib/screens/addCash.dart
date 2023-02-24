// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:finsecure/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(home: AddCash()));
}

class AddCash extends StatefulWidget {
  const AddCash({super.key});

  @override
  State<AddCash> createState() => _AddCashState();
}

class _AddCashState extends State<AddCash> {
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    var number = TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          maxRadius: 60,
          backgroundColor: Colors.blue[200],
          child: Image(
            image: AssetImage(
              "images/cash_balance.png",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 8),
          child: Text(
            "Set up your cash balance",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Text("How much cash do you have in your physical wallet?",
            style: TextStyle(fontSize: 12, color: Color(0xFF777777))),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 80,
              child: TextField(
                  controller: number,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) => {
                       
                            // setState(
                            //   () {
                            //     isEmpty = false;
                            //   },
                            // )
                          
                      },
                  onSubmitted: (value) => {
                        if (value == "")
                          {
                            setState(
                              () {
                                isEmpty = true;
                              },
                            )
                          }
                        else
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Tabs(int.parse(value))))
                      },
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  cursorHeight: 0,
                  cursorColor: Color(0xFFF0F0F0),
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  decoration: InputDecoration(
                    errorText: isEmpty ? "Field Can't be empty" : null,
                    border: InputBorder.none,
                    hintText: "0",
                  )),
            ),
            Text("INR")
          ]),
        )
      ])),
    );
  }
}
