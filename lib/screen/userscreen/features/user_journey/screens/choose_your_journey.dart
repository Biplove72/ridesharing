import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/userscreen/features/user_journey/screens/pickup_location.dart';
import 'package:ridesharing_app/screen/userscreen/features/user_journey/screens/selected_places.dart';
import 'package:ridesharing_app/screen/userscreen/map.dart';

class ChooseJourney extends StatefulWidget {
  ChooseJourney({super.key, this.onSelected, this.vehicleType});
//optinal
  final Function(List<String>? destination, String? pickupLocation)? onSelected;
  String? vehicleType;

  @override
  State<ChooseJourney> createState() => _ChooseJourneyState();
}

class _ChooseJourneyState extends State<ChooseJourney> {
  TextEditingController pickup = TextEditingController();
  TextEditingController destination = TextEditingController();
  TextEditingController destination2 = TextEditingController();
  String? stop1;

  List<String> destinationList = [];

  @override
  Widget build(BuildContext context) {
    final width = SizeUtils.width;
    final height = SizeUtils.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            MapPage(),
            Positioned(
                top: 20,
                //bottom: 20,
                left: 0,
                right: 0,
                child: Wrap(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          // color: Color(0xffB2F0E8),
                          color: CustomTheme.primaryColor.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Column(
                          children: [
                            LocationField(
                                controller: pickup,
                                navigation: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PickUpLocation(
                                                  onSelected: (value) {
                                                pickup.text = value;
                                                print(pickup.text);
                                              })));
                                },
                                img: 'assets/images/pin.png',
                                title: 'From',
                                IconButton: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      pickup.clear();
                                    });
                                  },
                                  icon: const CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 10,
                                      child: Icon(
                                        Icons.close,
                                        size: 10,
                                      )),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: LocationField(
                                    controller: destination,
                                    img: 'assets/images/flags.png',
                                    title: 'Stop 1',
                                    IconButton: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            destinationList
                                                .remove(destination.text);

                                            destination.clear();
                                          });
                                        },
                                        icon: const CircleAvatar(
                                          radius: 10,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.close,
                                            size: 10,
                                          ),
                                        )),
                                    navigation: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PickUpLocation(
                                                      onSelected: (value) {
                                                    setState(() {
                                                      destination.text = value;
                                                      destinationList.add(
                                                          destination.text);
                                                      stop1 = destination.text;
                                                    });
                                                  })));
                                    })),
                            stop1 != null
                                ? LocationField(
                                    controller: destination2,
                                    img: 'assets/images/flags.png',
                                    title: 'Stop 2',
                                    IconButton: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            destinationList
                                                .remove(destination2.text);

                                            destination2.clear();
                                          });
                                        },
                                        icon: const CircleAvatar(
                                          radius: 10,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.close,
                                            size: 10,
                                          ),
                                        )),
                                    navigation: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PickUpLocation(
                                                      onSelected: (value) {
                                                    setState(() {
                                                      destination2.text = value;
                                                      destinationList.add(
                                                          destination2.text);
                                                      print(pickup.text);
                                                    });
                                                  })));
                                    })
                                : const SizedBox()
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
              bottom: 80,
              left: 26,
              right: 26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                      color: CustomTheme.primaryColor,
                      text: 'Cancel',
                      width: 140.wp,
                      navigation: () {
                        Navigator.pop(context);
                      },
                      height: 54.hp),
                  CustomButton(
                      color: CustomTheme.skyBlue,
                      text: 'Done',
                      width: 140.wp,
                      navigation: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => journeyselectedPage(
                                      destinationist: destinationList,
                                      Pickuploaction: pickup.text,
                                      selecetedVehicleType:
                                          widget.vehicleType.toString(),
                                    )));
                      },
                      height: 54.hp)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LocationField extends StatelessWidget {
  LocationField(
      {super.key,
      required this.img,
      required this.title,
      this.controller,
      required this.IconButton,
      required this.navigation});

  String img;
  String title;
  Widget IconButton;
  // Function ontap;
  VoidCallback navigation;
  //String location;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageIcon(
          AssetImage(img),
          color: Colors.white,
          size: 25,
        ),
        SizedBox(
          width: 10.wp,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
              TextFormField(
                controller: controller,
                onTap: navigation,
                readOnly: true,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                decoration: InputDecoration(
                  suffixIcon: IconButton,
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
