// import 'package:flutter/material.dart';

// import 'package:ridesharing_app/common/custom_button.dart';
// import 'package:ridesharing_app/common/size_utlis.dart';
// import 'package:ridesharing_app/common/theme.dart';
// import 'package:ridesharing_app/common/widgets/custom_tile_widget.dart';
// import 'package:ridesharing_app/common/widgets/inovice_logo.dart';
// import 'package:ridesharing_app/common/widgets/trip_widgets.dart';

// class Invoice extends StatelessWidget {
//   const Invoice({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final double basefare = 200;
//     final screenHeight = MediaQuery.of(context).size.height;

//     final width = SizeUtils.width;
//     final height = SizeUtils.height;

//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//           child: Container(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Center(
//                   child: Text(
//                     'invoic',
//                     style: CustomTheme.textStyle16,
//                   ),
//                 ),

//                 Text(
//                   'hello',
//                   style: TextStyle(fontSize: 50, color: Colors.black),
//                 ),
//                 // Padding(
//                 //   padding: const EdgeInsets.symmetric(vertical: 10),
//                 //   child: Flexible(
//                 //     flex: 1,
//                 //     child: Container(
//                 //       height: 2,
//                 //       color: Colors.grey,
//                 //     ),
//                 //   ),
//                 // ),
//                 Divider(
//                   color: Colors.black,
//                   height: 4,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 10),
//                   child: InvoiceLogo(),
//                 ),
//                 Container(
//                   color: Colors.white30,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Column(
//                       children: [
//                         CustomColumn(
//                             leading: 'Booking id', trailing: 'Booking id'),
//                         CustomColumn(leading: 'Base Fare', trailing: 'Rs. 510'),
//                         CustomColumn(
//                             leading: 'Distance Fare', trailing: 'Rs.150'),
//                         CustomColumn(leading: 'Admin Fee', trailing: 'Rs.150'),
//                         CustomColumn(leading: 'Total', trailing: 'Rs.150'),
//                         CustomColumn(
//                           leading: 'Payable Amount',
//                           trailing: 'Rs.150',
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 const Text(
//                   'Trip Details',
//                   style: CustomTheme.textStyle14,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 10),
//                   child: TripWidget(),
//                 ),
//                 CustomButton(
//                     text: 'Close',
//                     color: CustomTheme.primaryColor,
//                     width: double.infinity,
//                     navigation: () {},
//                     height: 50)
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
