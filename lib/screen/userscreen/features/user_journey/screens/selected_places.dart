import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/distance_showcontainer.dart';
import 'package:ridesharing_app/common/widgets/dragable_line.dart';
import 'package:ridesharing_app/common/widgets/location_container%20-widget.dart';
import 'package:ridesharing_app/common/widgets/payment_selection.dart';
import 'package:ridesharing_app/screen/userscreen/mapwith_icon.dart';
import 'package:ridesharing_app/screen/userscreen/features/user_journey/screens/searching_rider.dart';

class journeyselectedPage extends StatefulWidget {
  journeyselectedPage(
      {super.key,
      required this.selecetedVehicleType,
      required this.destinationist,
      required this.Pickuploaction});

  String selecetedVehicleType;
  List<String> destinationist;
  String Pickuploaction;

  @override
  State<journeyselectedPage> createState() => _JourneyState();
}

class _JourneyState extends State<journeyselectedPage> {
  TextEditingController price = TextEditingController();
  String triptype = '';
  @override
  Widget build(BuildContext context) {
    final width = SizeUtils.width;
    final height = SizeUtils.height;
    int indexnumber;
    return Scaffold(
      body: Stack(
        children: [
          MapStack(),
          Positioned(
              top: 50,
              left: 140,
              right: 140,
              child: widget.selecetedVehicleType == "Car"
                  ? SeleactedVechileImageContainer(
                      vehicleType: widget.selecetedVehicleType.toString(),
                      img: 'assets/images/vehicle.png')
                  : widget.selecetedVehicleType == "Bike"
                      ? SeleactedVechileImageContainer(
                          vehicleType: widget.selecetedVehicleType.toString(),
                          img: 'assets/images/bike1.png')
                      : SeleactedVechileImageContainer(
                          vehicleType: widget.selecetedVehicleType.toString(),
                          img: 'assets/images/parcel.png')),
          Positioned(
            //top: 100,
            left: 0,
            right: 0,
            bottom: 120,
            child: Stack(
              children: [
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 20),
                        child: Column(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'Choose Your journey',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ),
                            LocationStoreContainer(
                                imgurl: 'assets/images/pin.png',
                                title: 'Pickup Location',
                                location: widget.Pickuploaction),
                            if (widget.destinationist.length == 1)
                              Row(
                                children: [
                                  const ImageIcon(
                                    AssetImage('assets/images/flags.png'),
                                    color: CustomTheme.primaryColor,
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      title: Text(
                                          'Stop ${widget.destinationist.length}'),
                                      subtitle: Text(
                                        widget.destinationist[0].toString(),
                                        style: CustomTheme.textStyle16,
                                      ),
                                      trailing: CustomButton(
                                          text: '+ Add Stop',
                                          width: 80.wp,
                                          color: CustomTheme.primaryColor,
                                          navigation: () {
                                            Navigator.pop(context);
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             ChooseJourney(
                                            //               vehicleType: widget
                                            //                   .selecetedVehicleType,
                                            //               onSelected: (destination,
                                            //                   pickupLocation) {
                                            //                 setState(() {});
                                            //               },
                                            //             )));
                                          },
                                          height: 32.hp),
                                    ),
                                  ),
                                ],
                              )
                            else if (widget.destinationist.length > 1)
                              ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: widget.destinationist.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: LocationStoreContainer(
                                        imgurl: 'assets/images/flags.png',
                                        title: 'Stop ${index + 1}',
                                        location: widget.destinationist[index],
                                      ),
                                    );
                                  }),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: DistanceContainer(
                                distance: '2.5 km',
                                distancetime: '1hr 25 min 20 sec',
                              ),
                            ),
                            const PaymentSelection(),
                            Padding(
                              padding: EdgeInsets.only(top: 20.hp),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.message,
                                    color: CustomTheme.primaryColor,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text('Any comments For Driver'),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: SizedBox(
                                          height: 20.hp,
                                          width: 120.wp,
                                          child: TextFormField(
                                            readOnly: true,
                                            decoration: const InputDecoration(
                                              hintStyle:
                                                  CustomTheme.textStyle14,
                                              hintText:
                                                  'Any message type here....',
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                const Positioned(
                    top: 20, left: 172, right: 172, child: DragableLine())
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 26,
            right: 26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                    color: CustomTheme.primaryColor,
                    text: 'Single Trip',
                    width: 140.wp,
                    navigation: () {
                      setState(() {
                        triptype = 'single';
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchingRide()));
                      });
                    },
                    height: 54.hp),
                CustomButton(
                    color: CustomTheme.skyBlue,
                    text: 'Round Trip',
                    width: 140.wp,
                    navigation: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchingRide()));
                    },
                    height: 54.hp)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
