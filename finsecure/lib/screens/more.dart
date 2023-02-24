// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:finsecure/screens/addCash.dart';
import 'package:finsecure/widget/transaction.dart';
import 'package:flutter/material.dart';



class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: CircleAvatar(
          maxRadius: 39,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage("images/blank_profile_2.png"),
        ),
      ),
      Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    new Flexible(
      child: new TextField(
          controller: TextEditingController(text: "Akshit"),
          decoration: InputDecoration(
            labelText: "First name",
              contentPadding: EdgeInsets.all(10),
              
          )
      ),
    ),
    SizedBox(width: 20.0,),
    new Flexible(
      child: new TextField(
          controller: TextEditingController(text: "Sharma"),
          decoration: InputDecoration(
            labelText: "Last name",
              contentPadding: EdgeInsets.all(10),
              
          )
      ),
    ),
   
  ],
),
Row(children: [
  Flexible(child: TextField(
     controller: TextEditingController(text: "akshitdatabase@gmail.com"),
          decoration: InputDecoration(
            labelText: "Email",
              contentPadding: EdgeInsets.all(10),
              
          )
  ))
],),
GestureDetector(
  child: TransactionWidget(Icons.change_circle, "Update Balance Manually", ">")
  ,
  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCash())) ,),
TransactionWidget(Icons.delete, "Delete Account", ">")
    ]);
  }
}
