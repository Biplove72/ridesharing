import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/userscreen/features/userauth/screens/login_page.dart';
import 'package:ridesharing_app/screen/userscreen/features/userauth/widgets/signup_page_widget.dart';

class RideSharing extends StatelessWidget {
  const RideSharing({super.key});

  @override
  Widget build(BuildContext context) {
    final width = SizeUtils.width;
    final height = SizeUtils.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/rider 1.png',
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    'BOOK A RIDE & EXPLORE NEW ',
                    style: CustomTheme.textStyle18,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    'PLACES',
                    style: CustomTheme.textStyle18,
                  ),
                ),
                CustomButton(
                  color: CustomTheme.primaryColor,
                  text: 'SignIn',
                  width: double.infinity,
                  navigation: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: CustomButton(
                    color: CustomTheme.primaryColor,
                    text: 'SignUp',
                    width: double.infinity,
                    navigation: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpWidget()));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
