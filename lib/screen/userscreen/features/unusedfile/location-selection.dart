// import 'package:flutter/material.dart';
// import 'package:ridesharing_app/common/custom_button.dart';
// import 'package:ridesharing_app/common/theme.dart';
// import 'package:ridesharing_app/screen/userscreen/features/user_journey/choose_your_journey.dart';
// import 'package:ridesharing_app/screen/userscreen/features/user_journey/searching_rider.dart';

// class ChooseLocation extends StatefulWidget {
//   ChooseLocation(
//       {super.key,
//       this.selectedVehicleType,
//       this.pickuplocation,
//       this.destination});
//   String? selectedVehicleType;
//   //optinal
//   String? pickuplocation;
//   //optinal
//   List<String>? destination;

//   @override
//   State<ChooseLocation> createState() => _ChooseLocationState();
// }

// class _ChooseLocationState extends State<ChooseLocation> {
//   // final List addStop = [];

//   List<String> selectedDepartures = [];

//   TextEditingController pickup = TextEditingController();
//   TextEditingController destination = TextEditingController();
//   TextEditingController destination2 = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20),
//         child: Column(
//           children: [
//             const Text(
//               'choose your journey',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
//             ),

//             Row(
//               children: [
//                 const Padding(
//                     padding: EdgeInsets.only(
//                       left: 20,
//                       top: 10,
//                       right: 20,
//                     ),
//                     child: ImageIcon(
//                       AssetImage('assets/images/pin.png'),
//                       color: Colors.red,
//                     )),
//                 Container(
//                   constraints: BoxConstraints(
//                       maxWidth: screenWidth * 0.6, minWidth: screenWidth * 0.3),
//                   child: TextFormField(
//                     controller: pickup,
//                     readOnly: true,
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => ChooseJourney(
//                                     vehicleType: widget.selectedVehicleType,
//                                   )));
//                     },
//                     decoration: const InputDecoration(
//                         labelStyle: CustomTheme.textStyle16,
//                         hintText: 'pickup location ?'),
//                   ),
//                 )
//               ],
//             ),
//             Row(
//               children: const [
//                 Padding(
//                   padding: EdgeInsets.only(left: 20, top: 10, right: 20),
//                   child: ImageIcon(
//                     AssetImage('assets/images/flags.png'),
//                     color: Colors.red,
//                     size: 20,
//                   ),
//                 ),
//                 // Container(
//                 //   // width: 200,
//                 //   constraints: BoxConstraints(
//                 //       maxWidth: screenWidth * 0.6, minWidth: screenWidth * 0.3),
//                 //   child: TextFormField(
//                 //     maxLines: null,
//                 //     minLines: 1,
//                 //     controller: destination,
//                 //     readOnly: true,
//                 //     onTap: () {
//                 //       showModalBottomSheet(
//                 //           shape: const RoundedRectangleBorder(
//                 //             borderRadius: BorderRadius.vertical(
//                 //               top: Radius.circular(25.0),
//                 //             ),
//                 //           ),
//                 //           isScrollControlled: true,
//                 //           context: context,
//                 //           builder: (BuildContext context) {
//                 //             return DestinationLocation();
//                 //           });
//                 //     },
//                 //     decoration: const InputDecoration(
//                 //       hintText: 'destination loaction',

//                 //       // suffixIcon:   Icon(
//                 //       //   Icons.add,
//                 //       //   color: CustomTheme.primaryColor,
//                 //       // )
//                 //     ),
//                 //   ),
//                 //),
//               ],
//             ),

//             selectedDepartures.length == 1
//                 ? TextFormField(
//                     decoration: const InputDecoration(),
//                   )
//                 : const SizedBox(),
//             // destination.text != null
//             //     ? TextFormField(decoration: InputDecoration())
//             //     : SizedBox(),
//             Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: Row(children: [
//                 const Padding(
//                   padding: EdgeInsets.only(top: 10, left: 20, right: 20),
//                   child: Icon(Icons.message),
//                 ),
//                 Column(
//                   children: [
//                     const Text('any message for driver'),
//                     Container(
//                         constraints: BoxConstraints(
//                             maxWidth: screenWidth * 0.6,
//                             minWidth: screenWidth * 0.3),
//                         child: TextFormField(
//                           readOnly: true,
//                           maxLines: 3,
//                           decoration: const InputDecoration(
//                               focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide.none,
//                               ),
//                               hintText: 'Type here........'),
//                         ))
//                   ],
//                 )
//               ]),
//             ),

//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   CustomButton(
//                     text: 'single Trip',
//                     width: MediaQuery.of(context).size.width * 0.4,
//                     navigation: () {},
//                     height: 50,
//                     color: CustomTheme.skyBlue,
//                   ),
//                   // SizedBox(
//                   //   width: 45,
//                   // ),
//                   CustomButton(
//                     text: 'Round Trip',
//                     width: MediaQuery.of(context).size.width * 0.4,
//                     navigation: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => SearchingRide(
//                                     pickUplocation: pickup.text,
//                                     destination: selectedDepartures,
//                                   )));
//                     },
//                     height: 50,
//                     color: CustomTheme.primaryColor,
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
