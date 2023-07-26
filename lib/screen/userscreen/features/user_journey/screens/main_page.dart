import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/vehicle_card_widget.dart';
import 'package:ridesharing_app/screen/userscreen/features/user_journey/screens/choose_your_path.dart';
import 'package:ridesharing_app/screen/userscreen/features/user_drawer/screen/custom_drawer.dart';
import 'package:ridesharing_app/screen/userscreen/features/unusedfile/location-selection.dart';
import 'package:ridesharing_app/screen/userscreen/map.dart';
import 'package:ridesharing_app/screen/userscreen/mapwith_icon.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key, this.destination});

  List<String>? destination;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  String selcectedVeicheleType = '';

  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Builder(builder: (context) {
        return Stack(
          children: [
            MapStack(),
            // Positioned(
            //     top: 30,
            //     left: 10,
            //     child: IconButton(
            //       onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => const CustomDrawer()));
            //       },
            //       icon: Container(
            //         height: 37,
            //         width: 36,
            //         color: CustomTheme.primaryColor,
            //         child: const Icon(
            //           Icons.menu,
            //           size: 25,
            //         ),
            //       ),
            //       color: Colors.white,
            //     )),
            // Positioned(
            //     top: 80,
            //     right: 10,
            //     child: IconButton(
            //       onPressed: () {},
            //       icon: const Icon(
            //         Icons.my_location,
            //         size: 35,
            //       ),
            //       color: CustomTheme.primaryColor,
            //     )),
            // Positioned(
            //     top: 40,
            //     right: 10,
            //     child: IconButton(
            //         onPressed: () {},
            //         icon: const ImageIcon(
            //           AssetImage('assets/images/Icons_share.png'),
            //           size: 55,
            //           color: CustomTheme.primaryColor,
            //         ))),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Text(
                          'Choose Your Vehicle',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selcectedVeicheleType = 'Car';
                                    });
                                  },
                                  child: VehicleCard(
                                    color: selcectedVeicheleType == 'Car'
                                        ? Colors.red
                                        : Colors.black12,
                                    vehicleImage: Image.asset(
                                      'assets/images/vehicle.png',
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.scaleDown,
                                    ),
                                    vehicleName: 'Car',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selcectedVeicheleType = 'Bike';
                                      });
                                    },
                                    child: VehicleCard(
                                        color: selcectedVeicheleType == 'Bike'
                                            ? Colors.red
                                            : Colors.black12,
                                        vehicleImage: Image.asset(
                                          'assets/images/bike1.png',
                                          height: 50,
                                          width: 50,
                                          fit: BoxFit.scaleDown,
                                        ),
                                        vehicleName: 'Bike')),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selcectedVeicheleType = 'parcel';
                                      });
                                    },
                                    child: VehicleCard(
                                        color: selcectedVeicheleType == 'parcel'
                                            ? Colors.red
                                            : Colors.black12,
                                        vehicleImage: Image.asset(
                                          'assets/images/parcel.png',
                                          height: 50,
                                          width: 50,
                                          fit: BoxFit.scaleDown,
                                        ),
                                        vehicleName: 'parcel')),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: CustomButton(
                            color: CustomTheme.primaryColor,
                            text: 'Next',
                            width: double.infinity,
                            navigation: () {
                              if (selcectedVeicheleType.isNotEmpty) {
                                // showModalBottomSheet(
                                //     context: context,
                                //     builder: (BuildContext) {});
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChooseYourJourney(
                                              selecetedVehicleType:
                                                  selcectedVeicheleType,
                                            )));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Please select a vehicle'),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
