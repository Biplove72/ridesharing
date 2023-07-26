import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/dragable_line.dart';
import 'package:ridesharing_app/common/widgets/payment_selection.dart';
import 'package:ridesharing_app/screen/userscreen/features/user_journey/screens/choose_your_journey.dart';
import 'package:ridesharing_app/screen/userscreen/mapwith_icon.dart';

class ChooseYourJourney extends StatefulWidget {
  ChooseYourJourney({super.key, required this.selecetedVehicleType});
  String selecetedVehicleType;
  @override
  State<ChooseYourJourney> createState() => _ChooseYourJourneyState();
}

class _ChooseYourJourneyState extends State<ChooseYourJourney> {
  String triptype = '';
  @override
  Widget build(BuildContext context) {
    final width = SizeUtils.width;
    final height = SizeUtils.height;
    String pickup = '';
    int indexnumber;
    return Scaffold(
      body: Stack(
        children: [
          MapStack(),
          Positioned(
              top: 10,
              left: 0,
              right: 0,
              bottom: 0,
              child: DraggableScrollableSheet(
                  initialChildSize: 0.7,
                  minChildSize: 0.7,
                  maxChildSize: 1,
                  builder: (BuildContext context,
                      ScrollController scrollController) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Stack(
                        children: [
                          Container(
                              // height: 381.hp,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: SingleChildScrollView(
                                controller: scrollController,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 20),
                                  child: Column(
                                    children: <Widget>[
                                      const Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text(
                                          'Choose Your Journey',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const ImageIcon(
                                            AssetImage('assets/images/pin.png'),
                                            color: CustomTheme.primaryColor,
                                          ),
                                          Expanded(
                                            child: ListTile(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ChooseJourney(
                                                              vehicleType: widget
                                                                  .selecetedVehicleType,
                                                            )));
                                              },
                                              title: const Text(
                                                  'Pickup Location?'),
                                              subtitle: const Text(
                                                'choose pickup location',
                                                style: CustomTheme.textStyle16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const ImageIcon(
                                            AssetImage(
                                              'assets/images/flags.png',
                                            ),
                                            color: CustomTheme.primaryColor,
                                            size: 25,
                                          ),
                                          const Expanded(
                                            child: ListTile(
                                              title: Text('Stop 1'),
                                              subtitle: Text(
                                                'Where To go?',
                                                style: CustomTheme.textStyle16,
                                              ),
                                              //trailing:
                                            ),
                                          ),
                                          CustomButton(
                                              text: '+ Add Stop',
                                              width: 80.wp,
                                              color: CustomTheme.primaryColor,
                                              navigation: () {
                                                // Navigator.pop(context);
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ChooseJourney(
                                                              vehicleType: widget
                                                                  .selecetedVehicleType,
                                                            )));
                                              },
                                              height: 40.hp),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10.hp),
                                        child: const PaymentSelection(),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.message,
                                              color: CustomTheme.primaryColor,
                                            ),
                                            SizedBox(
                                              width: 16.wp,
                                            ),
                                            Column(
                                              children: [
                                                const Text(
                                                    'Any comments For Driver'),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 20),
                                                  child: SizedBox(
                                                    height: 20.hp,
                                                    width: 120.wp,
                                                    child: TextFormField(
                                                      readOnly: true,
                                                      decoration:
                                                          const InputDecoration(
                                                        hintStyle: CustomTheme
                                                            .textStyle14,
                                                        hintText:
                                                            'Type here ..',
                                                        border:
                                                            InputBorder.none,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          const Positioned(
                              top: 20,
                              left: 172,
                              right: 172,
                              child: DragableLine()),
                        ],
                      ),
                    );
                  })),

          // Positioned(
          //   bottom: 80,
          //   left: 26,
          //   right: 26,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       CustomButton(
          //           color: CustomTheme.primaryColor,
          //           text: 'Single Trip',
          //           width: 140,
          //           navigation: () {
          //             setState(() {
          //               triptype = 'single';
          //             });
          //           },
          //           height: 50),
          //       CustomButton(
          //           color: CustomTheme.skyBlue,
          //           text: 'Round Trip',
          //           width: 140,
          //           navigation: () {},
          //           height: 50)
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
