import 'package:finsecure/screens/genList.dart';
import 'package:flutter/material.dart';

class Timeline extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<Timeline> {
  List<Widget> dynamicList = [

    Container(
      height: 50,
      color: Color(0xFFF1F3F7),
      child:Center(child: Text("LAST 30 DAYS",style: TextStyle(color: Colors.grey,
      fontWeight: FontWeight.w500),))
    )

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          ...dynamicList
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              dynamicList.add(DynamicList(Icons.shopping_bag,"Shopping",20000));     // Passing data to constructor 
            });
          },
          child: Icon(Icons.add)),
    );
  }
}
