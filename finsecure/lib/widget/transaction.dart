import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
   IconData? icon;
   String? text1;
   String? text2;
    TransactionWidget(IconData icon, String text1, String text2, {super.key}){
      this.icon=icon;
      this.text1=text1;
      this.text2=text2;
      }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // Date Picker Start
        Row(
          children: [Icon(icon, color: Color(0xFF12BF88)), Text(text1!)],
        ),
        Text(text2!)
      ]),
    );
  }
}
