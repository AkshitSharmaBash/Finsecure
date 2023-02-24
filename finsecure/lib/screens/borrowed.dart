import 'package:finsecure/screens/borrowAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Borrowed(),
  ));
}

class Borrowed extends StatelessWidget {
  const Borrowed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: MyAppBar() ,
   
    );
  }
}
