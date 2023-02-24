// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:js';

import 'package:finsecure/constants/lists.dart';
import 'package:finsecure/screens/categories.dart';
import 'package:finsecure/screens/transactionType.dart';
import 'package:flutter/material.dart';

import '../widget/dropdownRow.dart';
import '../widget/transaction.dart';

import 'package:drop_down_list/drop_down_list.dart'; // Outside Package

void main() {
  runApp(MaterialApp(
      // initialRoute: "/",
      // routes: {
      //   "/":(context)=>MyWidget() ,
      //   "/options":(context)=>Categories()
      // },
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: MyWidget())));
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
      
            //   Rows of Transaction Wiget
            TransactionWidget(Icons.wallet, "Account", "Wallet"), // Account
            InkWell(
                child: TransactionWidget(Icons.calendar_today, "Today",
                    "Choose Date >")), // Date Picker
      
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              // color:Colors.amber,
              child: Row(
                children: [
                  Icon(
                    Icons.mode_edit_outline_outlined,
                    color: Color(0xFF12BF88),
                    size: 30,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 30, left: 10),
                      width: MediaQuery.of(context).size.width * 0.86,
                      child: TextField(
                        maxLines: 3,
                        decoration: InputDecoration(
                            hintText: "Write a note",
                            hintStyle: TextStyle(fontWeight: FontWeight.w600),
                            border: InputBorder.none),
                      )),
                ],
              ),
            ),
      
          DropdownRow(Icons.edit, "Transaction Type",transactionList),  // Transaction Category
            DropdownRow(Icons.repeat, "Recurrence", recurrenceList)   // Reccurence
          , 
            SizedBox(height: 70, child: null),
      
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF12BF88)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      (MaterialPageRoute(builder: (context) => Categories())));
                },
                child: Text("Select a Category")),
          ],
        ),
      ),
    );
  }
}
