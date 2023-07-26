import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_appbar.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/rider_appbar.dart';
import 'package:ridesharing_app/common/widgets/user_image_widget.dart';
import 'package:ridesharing_app/screen/ridermode/features/riders-views/invoice_details.dart';
import 'package:ridesharing_app/screen/userscreen/map.dart';

class TripsCompleted extends StatefulWidget {
  const TripsCompleted({super.key});

  @override
  State<TripsCompleted> createState() => _TripsCompletedState();
}

class _TripsCompletedState extends State<TripsCompleted> {
  bool _isOn = true;
  @override
  void toggle() {
    setState(() => _isOn = !_isOn);
  }

  Widget build(BuildContext context) {
    final mediawidth = SizeUtils.width;
    final mediaheight = SizeUtils.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: RiderCustomAppBar(
          toggle: () {},
          iconbutton: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          backgroundColor: Colors.transparent),
      body: Stack(children: [
        MapPage(),
        Positioned(bottom: 0, left: 0, right: 0, child: RichPickUpPoint())
      ]),
    );
  }
}

class RichPickUpPoint extends StatelessWidget {
  const RichPickUpPoint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Icon> icons = [
      const Icon(Icons.star),
      const Icon(Icons.star),
      const Icon(Icons.star),
      const Icon(Icons.star),
      const Icon(Icons.star)
    ];
    return Container(
      height: 30.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const Text(
              'Rich Pick Up Point',
              style: CustomTheme.textStyle16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: UserImageWIdget()),
                Column(
                  children: [
                    const Text(
                      'Passenger Details',
                      style: CustomTheme.textStyledim14,
                    ),
                    const Text(
                      'Binod Khanal',
                      style: CustomTheme.textStyle16,
                    ),
                    Row(
                      children: icons,
                    )
                  ],
                ),
                Container(
                  width: 2.wp,
                  height: 80,
                  color: Colors.red,
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.message,
                          color: Colors.red,
                          size: 25,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.call,
                          color: Colors.red,
                          size: 25,
                        ))
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                    color: CustomTheme.primaryColor,
                    text: 'cancel',
                    width: 150,
                    navigation: () {},
                    height: 50),
                CustomButton(
                    color: CustomTheme.skyBlue,
                    text: 'Completed',
                    width: 150,
                    navigation: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InvoiceDetails()));
                    },
                    height: 50)
              ],
            )
          ],
        ),
      ),
    );
  }
}
