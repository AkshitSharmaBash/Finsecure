import 'package:flutter/material.dart';

class DynamicList extends StatelessWidget {

   IconData? icon;
   late String categorie;
   int? amount;
    DynamicList(IconData icon,String categorie,int amount,{super.key}){
        this.icon=icon;
        this.categorie=categorie;
        this.amount=amount;

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical:10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
           children:[Container(
            padding: EdgeInsets.all(8),
            decoration:BoxDecoration(shape: BoxShape.circle,
            color: Colors.blue),
            child: Icon(icon,
            color:Colors.white)),
           Padding(
             padding: const EdgeInsets.only(left: 10),
             child: Text(categorie,
             style: TextStyle(fontWeight: FontWeight.w500,
             fontSize: 20
             ),
             ),
           )]
          )
          ,
            Text("Rs $amount")],
      ),
    );
  }
}
