import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/theme.dart';

class TripWidget extends StatelessWidget {
  const TripWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.20,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
                child: Column(
              children: [
                ImageIcon(
                  AssetImage(
                    'assets/images/pin.png',
                  ),
                  color: Colors.red,
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Container(
                  height: double.infinity,
                  width: 2,
                  color: Colors.grey,
                )),
                SizedBox(
                  height: 10,
                ),
                ImageIcon(
                  AssetImage(
                    'assets/images/flags.png',
                  ),
                  color: Colors.red,
                ),
                Expanded(
                    child: Container(
                  height: double.infinity,
                  width: 2,
                  color: Colors.grey,
                )),
                ImageIcon(
                  AssetImage(
                    'assets/images/flags.png',
                  ),
                  color: Colors.red,
                ),
              ],
            )),
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Text('PickupLocation?'),
                  Text(
                    'Kathmandu',
                    style: CustomTheme.textStyle16,
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      width: 2,
                    ),
                  ),
                  //SizedBox(height: 10),
                  Column(
                    children: [
                      Text('stop1'),
                      Text(
                        'Kathmandu,Nepal',
                        style: CustomTheme.textStyle16,
                      ),
                    ],
                  ),

                  Expanded(
                    child: SizedBox(
                      height: double.infinity,
                      width: 2,
                    ),
                  ),
                  Column(
                    children: [
                      Text('stop2'),
                      Text(
                        'Kathmandu,Nepal',
                        style: CustomTheme.textStyle16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
