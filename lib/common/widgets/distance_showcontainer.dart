import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';

class DistanceContainer extends StatelessWidget {
  DistanceContainer(
      {super.key, required this.distance, required this.distancetime});

  String distance;
  String distancetime;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 59.hp,
      decoration: BoxDecoration(
          color: Colors.red[50], borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: RichText(
                text: TextSpan(
              children: <TextSpan>[
                const TextSpan(
                    text: 'Travel Time Estimated',
                    style: TextStyle(color: Colors.black)),
                TextSpan(text: distancetime, style: CustomTheme.textStyle14),
              ],
            )),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    distance,
                    style: CustomTheme.textStyle14,
                  ),
                ),
                height: 32,
                width: 82,
              ),
            ),
          )
        ],
      ),
    );
  }
}
