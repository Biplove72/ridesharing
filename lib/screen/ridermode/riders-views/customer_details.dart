import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/widgets/trip_widgets.dart';
import 'package:ridesharing_app/common/theme.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(205), topRight: Radius.circular(205))),
        height: MediaQuery.of(context).size.height * 0.85,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Text(
              'Trip Details',
              style: CustomTheme.textStyle16,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/userimge.jpg'),
            ),
            Text(
              'Binod Khanl',
              style: CustomTheme.textStyle16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.call, color: Colors.red),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.message,
                  color: Colors.red,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TripWidget(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 59,
                decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Expanded(
                        child: RichText(
                            text: TextSpan(
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Travel Time Estimated',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: ' ! hours 2min 3 sec',
                                style: CustomTheme.textStyle14),
                          ],
                        )),
                      ),
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
                              'Distance',
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
              ),
            ),
            ImageIcon(
              AssetImage(
                'assets/images/currency.png',
              ),
              size: 50,
              color: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    text: '-5',
                    textColor: Colors.black,
                    width: 85,
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
                    width: 85,
                    navigation: () {},
                    height: 50,
                    color: CustomTheme.primaryColor,
                    // borderside: BorderSide(color: Colors.red),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PriceContainer(
                    text: '150',
                  ),
                  PriceContainer(
                    text: '150',
                  ),
                  PriceContainer(
                    text: '150',
                  ),
                  PriceContainer(
                    text: '150',
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: CustomButton(
                  color: CustomTheme.primaryColor,
                  text: 'Send Request',
                  width: double.infinity,
                  navigation: () {},
                  height: 50),
            )
          ]),
        ));
  }
}

class PriceContainer extends StatelessWidget {
  const PriceContainer({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 85,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(15)),
      child: Center(child: Text(text)),
    );
  }
}
