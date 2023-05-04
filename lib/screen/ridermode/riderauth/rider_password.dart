import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/ridermode/riders-views/trips_views.dart';
//import 'package:ridesharing_app/screen/userscreen/main_page.dart';
import 'package:ridesharing_app/screen/widgets/text_form_widget.dart';

class RiderPasswordPage extends StatelessWidget {
  const RiderPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Enter Your Password',
                style: CustomTheme.textStyle18,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Password', style: CustomTheme.textStyle16),
                TextFormWidget(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Forgot your password?',
                    style: TextStyle(
                      color: Colors.black,
                    )),
                TextSpan(
                    text: 'Reset Password',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.red)),
              ])),
            ),
            CustomButton(
                color: CustomTheme.primaryColor,
                text: 'Next',
                width: double.infinity,
                navigation: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomerRequest()));
                },
                height: 50)
          ],
        ),
      )),
    );
  }
}
