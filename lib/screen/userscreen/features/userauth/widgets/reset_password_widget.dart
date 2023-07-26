import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_appbar.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/text_form_widget.dart';

class ResetpasswordWidget extends StatelessWidget {
  const ResetpasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          press: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Reset Your Password',
              style: CustomTheme.textStyle18,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Create new Passwod',
                style: CustomTheme.textStyledim14,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Enter your newpassword',
                      style: CustomTheme.textStyle14,
                    ),
                  ),
                  TextFormWidget(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Confirm your password',
                      style: CustomTheme.textStyle14,
                    ),
                  ),
                  TextFormWidget()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: CustomButton(
                  text: 'Reset',
                  color: CustomTheme.primaryColor,
                  width: double.infinity,
                  navigation: () {},
                  height: 56),
            )
          ],
        ),
      ),
    );
  }
}
