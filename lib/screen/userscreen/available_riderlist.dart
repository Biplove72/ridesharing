import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/userscreen/invoice.dart';
import 'package:ridesharing_app/screen/userscreen/rider_details.dart';

// class AvailableRiderList extends StatelessWidget {
//   const AvailableRiderList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 10),
//       child: ListView.builder(
//           scrollDirection: Axis.vertical,
//           itemCount: 5,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//               child: Card(
//                 color: Colors.grey.shade200,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20)),
//                 child: Expanded(
//                   flex: 1,
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.2,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(top: 5),
//                             child: LinearProgressIndicator(),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 10, vertical: 5),
//                                 child: CircleAvatar(
//                                   radius: 40,
//                                   child: Image.asset(
//                                       'assets/images/user-image.png'),
//                                 ),
//                               ),
//                               Column(
//                                 children: [
//                                   Text(
//                                     'Binod Khanal',
//                                     style: CustomTheme.textStyle16,
//                                   ),
//                                   Text('Bike name'),
//                                   Text('RiderTrips')
//                                 ],
//                               ),
//                               Text('Rating'),
//                               Column(
//                                 children: [
//                                   Text(
//                                     'NPR 129',
//                                     style: CustomTheme.textStyle18,
//                                   ),
//                                   Text('Times'),
//                                   Text('distance')
//                                 ],
//                               ),
//                             ],
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               CustomButton(
//                                   text: 'Decline',
//                                   borderside: BorderSide(color: Colors.red),
//                                   width: 120,
//                                   textColor: Colors.red,
//                                   navigation: () {},
//                                   height: 35),
//                               CustomButton(
//                                 text: 'Accept',
//                                 width: 120,
//                                 height: 35,
//                                 color: CustomTheme.primaryColor,
//                                 navigation: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => Invoice()));
//                                 },
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }

class AvailableRiderList extends StatelessWidget {
  const AvailableRiderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Card(
              color: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 10,
                      ),
                      child: LinearProgressIndicator(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/user-image.png'),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Binod Khanal',
                                  style: CustomTheme.textStyle16,
                                ),
                                Text('Bike name'),
                                Text('RiderTrips'),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text('Rating'),
                              Text('4.5'),
                            ],
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'NPR 129',
                                  style: CustomTheme.textStyle18,
                                ),
                                Text('Times'),
                                Text('distance'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                              text: 'Decline',
                              width: 120,
                              height: 35,
                              textColor: Colors.red,
                              navigation: () {},
                            ),
                            CustomButton(
                              text: 'Accept',
                              width: 120,
                              height: 35,
                              color: CustomTheme.primaryColor,
                              navigation: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => Invoice(),
                                //   ),
                                // );
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RiderDetails(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
