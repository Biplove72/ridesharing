import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/custom_pin_field.dart';
import 'package:ridesharing_app/screen/userscreen/features/userauth/screens/signup_details_page.dart';

class VerifySignUp extends StatelessWidget {
  VerifySignUp({super.key});

  TextEditingController _pin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Verify Account',
                style: CustomTheme.textStyle18,
              ),
            ),
            const Text(
              'Enter 4 digit code we have sent',
              style: CustomTheme.textStyle14,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Form(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: CustomPinCodeField(onChanged: (value) {
                    (value.length == 4);
                  })),
                ],
              )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Haven’t received verification code?',
                style: CustomTheme.textStyle14,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text('Resend Code',
                  style: CustomTheme.textStyle14.copyWith(
                      color: Colors.red, decoration: TextDecoration.underline)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CustomButton(
                color: CustomTheme.primaryColor,
                text: 'Confirm',
                width: double.infinity,
                navigation: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpUserDetailsPage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
