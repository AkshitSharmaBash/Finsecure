// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Debts(),
  ));
}

class Debts extends StatefulWidget {
  const Debts({super.key});

  @override
  State<Debts> createState() => _DebtsState();
}

class _DebtsState extends State<Debts> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Debts",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            backgroundColor: Color(0xFF00AA70),
            bottom: const TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    text: "Active",
                  ),
                  Tab(text: "Closed"),
                ]),
          ),
          body: TabBarView(children: [
            Container(
                color: Color(0xffF0F0F0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    
                      Container(
                        
                        decoration:BoxDecoration(
                          shape: BoxShape.circle,
                           image:   DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/active.png"),
                            
                            ),
                       ) ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:8),
                        child: Text(
                          textAlign:TextAlign.center,
                          "Track what you have borrowed",
                          style: TextStyle(

                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: 
                           Text(textAlign:TextAlign.center,
                                "Manage all your debts here. Tap the plus button to add the first one")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(child:Icon(Icons.add),onPressed: (){})
                  ],
                )
                    ])),
                Container(
                  color: Color(0xffF0F0F0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image(
                            image: AssetImage("images/active.png"),
                            width: MediaQuery.of(context).size.width / 2,
                            height: 200,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:8),
                          child: Text(
                            textAlign:TextAlign.center,
                            "No closed Debt",
                            style: TextStyle(
                              color: Color(0xFF6F6F6F),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                  ],),
                )
           
                     
                
                    ])),
          
        );
  }
}
