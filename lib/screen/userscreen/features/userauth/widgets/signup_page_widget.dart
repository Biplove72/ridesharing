import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_appbar.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/text_form_widget.dart';
import 'package:ridesharing_app/screen/userscreen/features/userauth/screens/login_page.dart';
import 'package:ridesharing_app/screen/userscreen/features/userauth/screens/verifiy_signup_page.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key});
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Enter your PhoneNumber',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Mobile Number',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset(
                                'assets/images/np.png',
                                height: 20,
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 1,
                              color: Colors.grey,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                '(+977)',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ),
                            Expanded(
                              child: TextFormWidget(
                                decorationborder: InputBorder.none,
                                hintText: '98********',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Text('Email id (optional)',
                        style: TextStyle(fontWeight: FontWeight.w700)),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormWidget(hintText: 'Enter your Email'),
                    )
                  ],
                ),
              ),
              Text('Enter your phone number to signup'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomButton(
                    color: CustomTheme.primaryColor,
                    text: "Next",
                    width: double.infinity,
                    navigation: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifySignUp()));
                    },
                    height: 50),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Already have an account?',
                        style: CustomTheme.textStyle14,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage())),
                      child: Text('Signin',
                          style: CustomTheme.textStyle14.copyWith(
                              decoration: TextDecoration.underline,
                              color: Colors.red)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
