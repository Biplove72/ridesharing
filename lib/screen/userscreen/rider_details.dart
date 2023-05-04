import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';

class RiderDetails extends StatelessWidget {
  const RiderDetails({
    super.key,
    // this.column,
    // this.row,
    // required this.imapgepath,
    // required this.name
  });
  // final String? headline;
  // final String? imapgepath;
  // final String? name;
  // final Widget? row;
  // final Widget? column;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Container(
              constraints: BoxConstraints(
                  minHeight: screenHeight * 0.5,
                  maxHeight: MediaQuery.of(context).size.height,
                  maxWidth: screenWidth,
                  minWidth: screenWidth * 0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Rider Details', style: CustomTheme.textStyle18),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Image.asset(
                          'assets/images/upload.jpg',
                          width: 80,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(Icons.message)
                        ],
                      ),
                      Text(
                        'Rider Name',
                        style: CustomTheme.textStyle16,
                      ),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.rate_review_sharp),
                      Expanded(child: Text('Rating')),
                      Expanded(child: Text('Trips')),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(child: Icon(Icons.bloodtype_outlined)),
                      Expanded(child: Text('blood group')),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(child: Icon(Icons.panorama_fisheye_sharp)),
                      Flexible(child: Text('professional'))
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(child: Text('Bike Details')),
                        Expanded(child: Text('Pulsur220')),
                        SizedBox(
                          width: 20,
                        ),
                        // Icon(Icons.bloodtype_outlined),
                        Container(
                          width: 1,
                          height: 25,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(child: Text('BikeNumber prtr|pok|lu|12'))
                      ],
                    ),
                  ),
                  Expanded(child: Text('Trip Details')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Card(
                          child: Container(
                            color: Colors.white,
                            height: screenHeight * 0.15,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Text('PickUp Location ?'),
                                Text('Pick upLocation name'),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Divider(
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Stop1'),
                                          Text('Destination Location Name'),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: CustomButton(
                                            text: '+Add',
                                            width: screenWidth * 0.2,
                                            navigation: () {},
                                            color: CustomTheme.primaryColor,
                                            height: 32),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [Text('Total Distance'), Text('data')],
                      ),
                      Column(
                        children: [Text('Fare'), Text('Price 125')],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      CustomButton(
                          text: 'Cancel Ride',
                          width: screenWidth * 0.02,
                          color: CustomTheme.skyBlue,
                          navigation: () {},
                          height: screenHeight * 0.05)
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:ridesharing_app/common/custom_button.dart';
// import 'package:ridesharing_app/common/theme.dart';

// class RiderDetails extends StatelessWidget {
//   const RiderDetails({
//     Key? key,
//     required this.riderDetailsText,
//     this.imagepath,
//     this.row1Widgets,
//     this.row2Widgets,
//     this.tripDetailsText,
//     this.tripDetailsCardWidget,
//     this.totalDistanceText,
//     this.totalDistanceData,
//     this.fareText,
//     this.farePrice,
//     required this.cancelRideButtonWidget,
//   }) : super(key: key);

//   final String riderDetailsText;
//   final String? imagepath;
//   final List<Widget>? row1Widgets;
//   final List<Widget>? row2Widgets;

//   final String? tripDetailsText;
//   final Widget? tripDetailsCardWidget;
//   final String? totalDistanceText;
//   final String? totalDistanceData;
//   final String? fareText;
//   final String? farePrice;
//   final Widget cancelRideButtonWidget;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final textTheme = Theme.of(context).textTheme;
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
//           child: Container(
//               constraints: BoxConstraints(
//                   minHeight: screenHeight * 0.5,
//                   maxHeight: MediaQuery.of(context).size.height,
//                   maxWidth: screenWidth,
//                   minWidth: screenWidth * 0.5),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Text(riderDetailsText, style: CustomTheme.textStyle18),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CircleAvatar(
//                         backgroundImage: AssetImage(imagepath!),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.phone),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Icon(Icons.message)
//                         ],
//                       ),
//                       Text(
//                         'Rider Name',
//                         style: CustomTheme.textStyle16,
//                       ),
//                     ],
//                   ),
//                   Row(
//                     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: row1Widgets ?? [],
//                   ),
//                   Expanded(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: row2Widgets ?? [],
//                     ),
//                   ),
//                   Expanded(child: Text('Trips Details')),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Expanded(
//                         child: Card(
//                           child: Container(
//                             color: Colors.white,
//                             height: screenHeight * 0.15,
//                             width: double.infinity,
//                             child: Column(
//                               children: [
//                                 Text(tripDetailsText),
//                                 tripDetailsCardWidget,
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Column(
//                         children: [
//                           Text(totalDistanceText ?? ''),
//                           Text(totalDistanceData ?? '')
//                         ],
//                       ),
//                       Column(
//                         children: [Text(fareText ?? ''), Text(farePrice ?? '')],
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       cancelRideButtonWidget
//                     ],
//                   )
//                 ],
//               )),
//         ),
//       ),
//     );
//   }
// }
