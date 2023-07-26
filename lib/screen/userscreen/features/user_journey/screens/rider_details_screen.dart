import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/dragable_line.dart';
import 'package:ridesharing_app/common/widgets/location_container%20-widget.dart';
import 'package:ridesharing_app/common/widgets/user_image_widget.dart';

class RiderDetails extends StatelessWidget {
  RiderDetails({super.key, this.stop2});
  String? stop2;

  @override
  Widget build(BuildContext context) {
    String bikename = 'pulsar';
    String bikenumber = 'Ba Pr 02-022 Pa 2601';
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final width = SizeUtils.width;
    final height = SizeUtils.height;
    late ScrollController scrollController;

    return Stack(children: [
      Positioned(top: 15, left: 0, right: 0, child: DragableLine()),
      Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Rider Details', style: CustomTheme.textStyle18),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: UserImageWIdget(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.message,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.red,
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                const Text(
                  'Rider Name',
                  style: CustomTheme.textStyle16,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 231, 181, 0),
                ),
                const Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '4.5',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                const Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '1534 Trips',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                  child: const Icon(
                    Icons.bloodtype,
                    color: Colors.red,
                  ),
                ),
                const Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'o+',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                  child: const Icon(
                    Icons.circle,
                    color: Colors.green,
                  ),
                ),
                const Expanded(
                  child: FittedBox(
                    child: Text(
                      'Professional',
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(76, 175, 80, 1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            Row(
              children: [
                const Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text('Bike Details', style: CustomTheme.textStyle14),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.02,
                ),
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '$bikename   $bikenumber',
                      style: CustomTheme.textStyle14,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Trips Details',
                style: CustomTheme.textStyle14,
              ),
            ),
            Container(
              width: screenWidth,
              child: Column(
                children: [
                  LocationStoreContainer(
                    imgurl: 'assets/images/pin.png',
                    title: 'pickup ',
                    location: 'Location from Api',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: LocationStoreContainer(
                      imgurl: 'assets/images/flags.png',
                      title: 'stop1 ',
                      location: 'Location from Api',
                    ),
                  ),
                  LocationStoreContainer(
                    imgurl: 'assets/images/flags.png',
                    title: 'stop2 ',
                    location: 'Location from Api',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Total Distance'),
                    Text(
                      '2.1 km',
                      style: CustomTheme.textStyle14,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('fair'),
                    Text(
                      '220',
                      style: CustomTheme.textStyle14,
                    )
                  ],
                ),
                CustomButton(
                    color: CustomTheme.skyBlue,
                    text: 'Cancel Ride',
                    width: 100,
                    navigation: () {},
                    height: 50)
              ],
            )
          ])),
      const Positioned(top: 20, left: 172, right: 172, child: DragableLine())
    ]);
  }
}
