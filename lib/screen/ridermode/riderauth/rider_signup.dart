import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/widgets/text_form_widget.dart';

class RiderSignUpDetails extends StatelessWidget {
  const RiderSignUpDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Column(children: [
                Text(
                  'Ride Registeration',
                  style: CustomTheme.textStyle18,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .20,
                  color: Colors.amber,
                  child: Image.asset('assets/images/ridesharing.jpg'),
                ),
                Text(
                  'Register your vehicle',
                  style: CustomTheme.textStyle16,
                ),
                Text(
                  'We will need to verify your vehicle for authenticity and security purpose. Be sure to upload genuine documents.',
                  style: CustomTheme.textStyledim14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vehicle',
                      style: CustomTheme.textStyle14,
                    ),
                    TextFormWidget(),
                    Text('vehicle Model', style: CustomTheme.textStyle14),
                    TextFormWidget(),
                    Text('Vehicle Registration Number',
                        style: CustomTheme.textStyle14),
                    TextFormWidget(),
                    Text('Vehicle Registration Document',
                        style: CustomTheme.textStyle14),
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey)),
                    ),
                    Text('Driving License', style: CustomTheme.textStyle14),
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey)),
                    ),
                    Text('Driving License Document',
                        style: CustomTheme.textStyle14),
                    Text('Selfie With Driving Licence',
                        style: CustomTheme.textStyle14),
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey)),
                    ),
                    Text('Vehicle Photo', style: CustomTheme.textStyle14),
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey)),
                    )
                  ],
                ),
              ]),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomButton(
              text: 'Register',
              width: double.infinity,
              navigation: () {},
              height: 60,
              color: CustomTheme.primaryColor,
            ),
          )
        ],
      ),
    ));
  }
}
