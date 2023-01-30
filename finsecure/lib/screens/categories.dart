import 'package:flutter/material.dart';
import 'option.dart';

List<Widget> options = [
  mp.map(key, value)=> {
     Row(
      children: [
  
  Icon(key),   //  iconType
  Text(value)        //  categoryType
])
  }

];

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Container(
      height: 50,
      color: Color(0xFFF1F3F7),
      child:Center(child: Text("ALL CATEGORIES",style: TextStyle(color: Colors.grey,
      fontWeight: FontWeight.w500),))
    ),

    
      ],
    );
  }
}
