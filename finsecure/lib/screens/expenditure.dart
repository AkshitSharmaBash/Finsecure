// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main(){

  runApp(
      MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green
        ),
        home:DefaultTabController(
          length:2,
          child:Scaffold(
            appBar:AppBar(
              // backgroundColor: Color(0xffff2727),
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                Tab(text:"Goal"),
                Tab(text:"Budget")
                 ],
              ),
              title:Text("Finsecure")
            ),
            body:TabBarView(children: [
                  Icon(Icons.alarm),
                  Icon(Icons.accessibility)

            ],
            )
            ,
            floatingActionButton: FloatingActionButton(
              onPressed: () => {},
              child:Icon(Icons.add)
            ),
          )
        )

      )
  );
}