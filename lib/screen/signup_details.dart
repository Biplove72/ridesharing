import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/login_page.dart';
import 'package:ridesharing_app/screen/widgets/text_form_widget.dart';

class SignUpUserDetails extends StatelessWidget {
  const SignUpUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Text('User Signup', style: CustomTheme.textStyle18),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Fill up the form to continue',
                style: CustomTheme.textStyledim14,
              ),
            ),
            Image.asset(
              'assets/images/user-image.png',
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full Legal Name',
                  style: CustomTheme.textStyle14,
                ),
                TextFormWidget(),
                Text(
                  'Address',
                  style: CustomTheme.textStyle14,
                ),
                TextFormWidget(),
                Text(
                  'Date of Birth',
                  style: CustomTheme.textStyle14,
                ),
                TextFormWidget(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'By Signing up you are accepting all our Terms',
                style: CustomTheme.textStyledim14,
              ),
            ),
            CustomButton(
                color: CustomTheme.primaryColor,
                text: 'Next',
                width: double.infinity,
                navigation: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Center(
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    child: Center(
                                      child: Icon(
                                        Icons.check,
                                        size: 50,
                                        color: Colors.green,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 5, color: Colors.green)),
                                  ),
                                ),
                              ),
                              Text('Sign Up Successfully '),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: CustomButton(
                                    color: CustomTheme.primaryColor,
                                    text: 'Done',
                                    width: double.infinity,
                                    navigation: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginPage()));
                                    },
                                    height: 60),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                height: 60)
          ],
        ),
      )),
    );
  }
}
