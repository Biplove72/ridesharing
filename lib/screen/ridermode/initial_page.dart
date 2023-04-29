import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/ridermode/riderauth/rider_signup.dart';
import 'package:ridesharing_app/screen/ridermode/riderauth/riderlogin.dart';

class RiderModePage extends StatelessWidget {
  const RiderModePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            CustomButton(
              text: 'Login',
              width: double.infinity,
              navigation: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RiderLoginPage()));
              },
              height: 50,
              color: CustomTheme.primaryColor,
            ),
            CustomButton(
              text: 'SignUp',
              width: double.infinity,
              navigation: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RiderSignUpDetails()));
              },
              height: 50,
              color: CustomTheme.primaryColor,
            )
          ],
        ),
      )),
    );
  }
}
