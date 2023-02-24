import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
        backgroundColor: Color(0xFF008859),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.close,
          ),
        ),
        title: Text(
          "I borrowed",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.check,
                  size: 26.0,
                ),
              )),
        ]);
  }
}
