import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/signup_details.dart';
import 'package:ridesharing_app/screen/widgets/pin_container_widget.dart';

class VerifySignUp extends StatelessWidget {
  const VerifySignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Verify Account',
                style: textTheme.titleLarge,
              ),
            ),
            Text('Enter 4 digit code we have sent'),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Form(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PinContainer(),
                  PinContainer(),
                  PinContainer(),
                  PinContainer(),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text('Haven’t received verification code?'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Resend Code',
                style: TextStyle(
                    color: Colors.red, decoration: TextDecoration.underline),
              ),
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
                            builder: (context) => SignUpUserDetails()));
                  },
                  height: 60),
            ),
          ],
        ),
      ),
    );
  }
}
