import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/login_page.dart';
import 'package:ridesharing_app/screen/signup_page.dart';

class RideSharing extends StatelessWidget {
  const RideSharing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
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
                    padding: const EdgeInsets.only(top: 20),
                    child: CustomButton(
                        color: CustomTheme.primaryColor,
                        text: 'SignIn',
                        width: double.infinity,
                        navigation: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        height: 50)),
                CustomButton(
                    color: CustomTheme.primaryColor,
                    text: 'SignUp',
                    width: double.infinity,
                    navigation: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    height: 50)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
