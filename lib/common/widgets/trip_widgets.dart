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
                const ImageIcon(
                  AssetImage(
                    'assets/images/pin.png',
                  ),
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Container(
                  height: double.infinity,
                  width: 2,
                  color: Colors.grey,
                )),
                const SizedBox(
                  height: 10,
                ),
                const ImageIcon(
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
                const ImageIcon(
                  AssetImage(
                    'assets/images/flags.png',
                  ),
                  color: Colors.red,
                ),
              ],
            )),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('PickupLocation?'),
                  const Text(
                    'Kathmandu Neapal ',
                    style: CustomTheme.textStyle16,
                  ),
                  const SizedBox(height: 10),
                  const Expanded(
                    child: SizedBox(
                      height: 50,
                      width: 2,
                    ),
                  ),
                  //SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'stop1',
                        textAlign: TextAlign.left,
                      ),
                      const Text(
                        'Kathmandu,Nepal',
                        style: CustomTheme.textStyle16,
                      ),
                    ],
                  ),

                  const Expanded(
                    child: SizedBox(
                      height: double.infinity,
                      width: 2,
                    ),
                  ),
                  Column(
                    children: [
                      const Text('stop2'),
                      const Text(
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
