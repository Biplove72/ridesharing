import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';

class RiderDetails extends StatelessWidget {
  const RiderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Rider Details', style: CustomTheme.textStyle18),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Image.asset(
                          'assets/images/rider-image.jpeg',
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
                    children: [
                      Icon(Icons.rate_review_sharp),
                      Text('Rating'),
                      Text('Trips'),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.bloodtype_outlined),
                      Text('blood group'),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.panorama_fisheye_sharp),
                      Text('professional')
                    ],
                  ),
                  Row(
                    children: [
                      Text('Bike Details'),
                      Text('Pulsur220'),
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
                      Text('BikeNumber prtr|pok|lu|12')
                    ],
                  ),
                  Text('Trip Details'),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Container(
                            color: Colors.white,
                            height: 150,
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
                                            width: 80,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          width: 100,
                          color: CustomTheme.skyBlue,
                          navigation: () {},
                          height: 50)
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
