import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/widgets/custom_tile_widget.dart';
import 'package:ridesharing_app/screen/widgets/trip_widgets.dart';

// class Invoice extends StatelessWidget {
//   const Invoice({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final double basefare = 200;
//  final screenHeight = MediaQuery.of(context).size.height,

//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//           child: Container(
//             height: MediaQuery.of(context).size.height,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Center(
//                   child: Text(
//                     'invoice',

//                     style: CustomTheme.textStyle16,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 10),
//                   child: Flexible(
//                     flex: 1,
//                     child: Container(
//                       height: 2,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(top: 20, left: 129),
//                         child: Stack(
//                           children: [
//                             Expanded(
//                               flex: 1,
//                               child: CircleAvatar(
//                                 backgroundColor: CustomTheme.purpleBlue,
//                                 radius: 70,
//                               ),
//                             ),
//                             Positioned(
//                                 top: 20,
//                                 left: 20,
//                                 bottom: 20,
//                                 right: 20,
//                                 child: CircleAvatar(
//                                     backgroundColor: Color(0xFF473080))),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(bottom: 80, left: 40),
//                         child: Expanded(
//                           child: ImageIcon(
//                             AssetImage('assets/images/p.png'),
//                             color: Colors.red,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   color: Colors.white30,
//                   child: Column(
//                     children: [
//                       CustomColumn(
//                           leading: 'Booking id', trailing: 'Booking id'),
//                       CustomColumn(leading: 'Base Fare', trailing: 'Rs. 510'),
//                       CustomColumn(
//                           leading: 'Distance Fare', trailing: 'Rs.150'),
//                       CustomColumn(leading: 'Admin Fee', trailing: 'Rs.150'),
//                       CustomColumn(leading: 'Total', trailing: 'Rs.150'),
//                       CustomColumn(
//                         leading: 'Payable Amount',
//                         trailing: 'Rs.150',
//                       )
//                     ],
//                   ),
//                 ),
//                 Text(
//                   'Trip Details',
//                   style: CustomTheme.textStyle14,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 10),
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

class Invoice extends StatelessWidget {
  const Invoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.green,
          padding: EdgeInsets.all(20),
          child: Text(
            'GfG',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ), //Text
          /** BoxConstraints Widget **/
          constraints: BoxConstraints(
              minHeight: 50,
              minWidth: 50,
              maxHeight: 80,
              maxWidth: 700), //BoxConstraints
        ), //container
      ), //Center
    );
  }
}
