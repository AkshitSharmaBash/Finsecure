import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TransactionWidget(
        Icons.money,
        "Type",
        "Wallet >",
      )));
}

class TransactionWidget extends StatefulWidget {
  IconData? icon;
  String? text1;
  String? text2;

  TransactionWidget(IconData icon, String text1, String text2, {super.key}) {
    this.icon = icon;
    this.text1 = text1;
    this.text2 = text2;
  }

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          // Date Picker Start
          Row(
            children: [
              Icon(widget.icon, color: Color(0xFF12BF88), size: 30),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  widget.text1!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Text(widget.text2!)
        ]),
      
    );
  }
}
