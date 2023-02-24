
// import 'package:drop_down_list/drop_down_list.dart';
// import 'package:drop_down_list/model/selected_list_item.dart';
// import 'package:flutter/material.dart';




// class TransactionType extends StatefulWidget {
//   const TransactionType({super.key});

//   @override
//   State<TransactionType> createState() => _TransactionTypeState();
// }

// class _TransactionTypeState extends State<TransactionType> {

//     final  transactionController = TextEditingController();
  
//     List<SelectedListItem> type=[
//       SelectedListItem(name: "Expenses"),
//       SelectedListItem(name: "Income"),
//       SelectedListItem(name: "Transfer")
//     ];
   


//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }


// void onTextFieldTap() {
//     DropDownState(
//       DropDown(
//         bottomSheetTitle: const Text(
//           "Transaction Type",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20.0,
//           ),
//         ),
//         submitButtonChild: const Text(
//           'Done',
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         data: widget.type ?? [],
//         selectedItems: (List<dynamic> selectedList) {
//           List<String> list = [];
//           for(var item in selectedList) {
//             if(item is SelectedListItem) {
//               list.add(item.name);
//             }
//           }                // No need of Snackbar
//         },
//         enableMultipleSelection: true,
//       ) 
//     ).showModal(context);
//   }























// DropDownState(
//       DropDown(
//         bottomSheetTitle: const Text(
//           kCities,
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20.0,
//           ),
//         ),
//         submitButtonChild: const Text(
//           'Done',
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         data: widget.cities ?? [],
//         selectedItems: (List<dynamic> selectedList) {
//           List<String> list = [];
//           for(var item in selectedList) {
//             if(item is SelectedListItem) {
//               list.add(item.name);
//             }
//           }
//           showSnackBar(list.toString());
//         },
//         enableMultipleSelection: false,
//       ),
//     ).showModal(context);