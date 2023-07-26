import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/userscreen/features/userauth/screens/login_page.dart';

class Dialogbox extends StatelessWidget {
  const Dialogbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        height: 200,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.green)),
                  child: const Center(
                    child: Icon(
                      Icons.check,
                      size: 50,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
            const Text('Sign Up Successfully '),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                color: CustomTheme.primaryColor,
                text: 'Done',
                height: 56,
                width: double.infinity,
                navigation: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
