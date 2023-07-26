import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/distance_showcontainer.dart';
import 'package:ridesharing_app/common/widgets/location_container%20-widget.dart';
import 'package:ridesharing_app/screen/userscreen/features/user_journey/screens/available_riderlist.dart';
import 'package:ridesharing_app/screen/userscreen/map.dart';

class SearchingRide extends StatefulWidget {
  SearchingRide({super.key, this.pickUplocation, this.destination});

  String? pickUplocation;
  List<String>? destination;

  @override
  State<SearchingRide> createState() => _SearchingRideState();
}

class _SearchingRideState extends State<SearchingRide> {
  @override
  int currentfare = 125;
  int decrementcount = 0;
  int incrementcount = 0;
  void decrement() {
    setState(() {
      currentfare -= 5;
      decrementcount++;
    });
  }

  bool isvisible = true;

  void increment() {
    setState(() {
      currentfare += 5;
      incrementcount++;
    });
  }

  Widget build(BuildContext context) {
    void _showModalBottomSheet(BuildContext context) {
      showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          isDismissible: false,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          )),
          builder: (context) => DraggableScrollableSheet(
              initialChildSize: 0.7,
              maxChildSize: 0.9,
              minChildSize: 0.32,
              expand: false,
              builder: (context, scrollController) {
                return AvailableRiderList();
              }));
    }

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            MapPage(),
            Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Visibility(
                  visible: isvisible,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25)),
                            child: const LinearProgressIndicator(
                              color: Colors.red,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'Searching ride for You..',
                              style: CustomTheme.textStyle16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LocationStoreContainer(
                                imgurl: 'assets/images/pin.png',
                                title: 'Pickup Location',
                                location: 'Pickup location place'),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: LocationStoreContainer(
                                      imgurl: 'assets/images/flags.png',
                                      title: 'Stop1',
                                      location: 'kathmandu  paywell office'),
                                );
                              })
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(vertical: 10),
                          //   child: LocationStoreContainer(
                          //       imgurl: 'assets/images/flags.png',
                          //       title: 'Stop1',
                          //       location: 'kathmandu  paywell office'),
                          // ),
                          // LocationStoreContainer(
                          //     imgurl: 'assets/images/flags.png',
                          //     title: 'Stop1',
                          //     location: 'kathmandu  paywell office')
                          ,
                          DistanceContainer(
                              distance: '8.5km', distancetime: '   35 minute'),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: ImageIcon(
                              AssetImage(
                                'assets/images/currency.png',
                              ),
                              color: Colors.red,
                              size: 50,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomButton(
                                text: '-5',
                                textColor: Colors.black,
                                width: 100,
                                navigation: () {
                                  decrement();
                                },
                                height: 50,
                                borderside: const BorderSide(color: Colors.red),
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'Current Fare',
                                    style: CustomTheme.textStyle16,
                                  ),
                                  Text(
                                    '$currentfare',
                                    style: CustomTheme.textStyle16,
                                  )
                                ],
                              ),
                              CustomButton(
                                text: '+5',
                                width: 100,
                                navigation: () {
                                  increment();
                                },
                                height: 50,
                                color: CustomTheme.primaryColor,
                                // borderside: BorderSide(color: Colors.red),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: CustomButton(
                                color: CustomTheme.primaryColor,
                                text: 'Raise Fare',
                                width: double.infinity,
                                navigation: () {
                                  _showModalBottomSheet(context);
                                },
                                height: 56),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class SeleactedVechileImageContainer extends StatelessWidget {
  SeleactedVechileImageContainer(
      {super.key, required this.vehicleType, required this.img});

  String vehicleType;
  String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          children: [
            Image.asset(
              img,
              height: 50,
              width: 50,
              fit: BoxFit.scaleDown,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                vehicleType,
                style: CustomTheme.textStyle16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
