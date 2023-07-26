import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/theme.dart';

class LocationStoreContainer extends StatelessWidget {
  LocationStoreContainer(
      {super.key,
      required this.imgurl,
      required this.title,
      required this.location});

  String imgurl;
  String title;
  String location;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageIcon(
          AssetImage(
            imgurl,
          ),
          size: 20,
          color: CustomTheme.primaryColor,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              location,
              style: CustomTheme.textStyle16,
            )
          ],
        )
      ],
    );
  }
}
