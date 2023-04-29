import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/userscreen/searching_rider.dart';

class ChooseLocation extends StatelessWidget {
  const ChooseLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text('choose your journey'),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 10,
                  right: 20,
                ),
                child: Icon(
                  Icons.circle_outlined,
                  size: 20,
                ),
              ),
              Container(
                width: 200,
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'pickup location'),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                child: Icon(
                  Icons.circle_outlined,
                  color: Colors.green,
                  size: 20,
                ),
              ),
              Container(
                width: 200,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'destination loaction',
                      suffixIcon: Icon(
                        Icons.add,
                        color: CustomTheme.primaryColor,
                      )),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Icon(Icons.message),
              ),
              Column(
                children: [
                  Text('any message for driver'),
                  Container(
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Type here'),
                      ))
                ],
              )
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                text: 'single Trip',
                width: 145,
                navigation: () {},
                height: 50,
                color: CustomTheme.skyBlue,
              ),
              // SizedBox(
              //   width: 45,
              // ),
              CustomButton(
                text: 'double Trip',
                width: 145,
                navigation: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchingRide()));
                },
                height: 50,
                color: CustomTheme.primaryColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}