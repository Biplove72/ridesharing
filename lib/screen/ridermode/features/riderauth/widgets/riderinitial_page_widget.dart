import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/ridermode/features/riderauth/screen/ridersignup_details_page.dart';
import 'package:ridesharing_app/screen/ridermode/features/riderauth/widgets/rider_signup_widget.dart';
import 'package:ridesharing_app/screen/ridermode/features/riderauth/screen/riderlogin_page.dart';

class RiderInitaialPageWidget extends StatelessWidget {
  const RiderInitaialPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = SizeUtils.width;
    final height = SizeUtils.height;
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                'assets/images/ridesharing.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.hp),
              child: const Text(
                'Ride Pooling Rider App',
                style: CustomTheme.textStyle18,
              ),
            ),
            CustomButton(
              text: 'Login',
              width: double.infinity,
              navigation: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RiderLoginPage()));
              },
              height: 56.hp,
              color: CustomTheme.primaryColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: CustomButton(
                text: 'SignUp',
                width: double.infinity,
                navigation: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const RiderSignupDetailsPage()));
                },
                height: 56,
                color: CustomTheme.primaryColor,
              ),
            )
          ],
        ),
      )),
    );
  }
}
