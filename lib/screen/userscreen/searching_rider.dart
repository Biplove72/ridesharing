import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/userscreen/available_riderlist.dart';
import 'package:ridesharing_app/screen/userscreen/map.dart';

class SearchingRide extends StatelessWidget {
  const SearchingRide({super.key});
  @override
  Widget build(BuildContext context) {
    void _showModalBottomSheet(BuildContext context) {
      showModalBottomSheet(
          context: context,
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
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: LinearProgressIndicator(
                            color: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text('Searching ride for You..'),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 10, right: 20),
                              child: ImageIcon(
                                AssetImage('assets/images/pin.png'),
                                color: Colors.red,
                                size: 20,
                              ),
                            ),
                            Container(
                              width: 200,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Anamnagr Paywell office ',
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 10, right: 20),
                                child: ImageIcon(
                                  AssetImage('assets/images/flags.png'),
                                  color: Colors.red,
                                  size: 20,
                                )),
                            Container(
                              width: 200,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Sankhamul',
                                  // suffixIcon: Icon(
                                  //   Icons.add,
                                  //   color: CustomTheme.primaryColor,
                                  // )
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomButton(
                                text: '-5',
                                textColor: Colors.black,
                                width: 100,
                                navigation: () {},
                                height: 50,
                                borderside: BorderSide(color: Colors.red),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Current Fare',
                                    style: CustomTheme.textStyle16,
                                  ),
                                  Text(
                                    'NPR 125',
                                    style: CustomTheme.textStyle16,
                                  )
                                ],
                              ),
                              CustomButton(
                                text: '+5',
                                width: 100,
                                navigation: () {},
                                height: 50,
                                color: CustomTheme.primaryColor,
                                // borderside: BorderSide(color: Colors.red),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: CustomButton(
                              color: CustomTheme.primaryColor,
                              text: 'Raise  Fare',
                              width: double.infinity,
                              navigation: () {
                                _showModalBottomSheet(context);
                              },
                              height: 50),
                        )
                      ],
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                ))
          ],
        ),
      ),
    );
  }
}
