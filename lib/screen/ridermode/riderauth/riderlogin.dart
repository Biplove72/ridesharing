import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/password_page.dart';
import 'package:ridesharing_app/screen/widgets/text_form_widget.dart';

class RiderLoginPage extends StatelessWidget {
  const RiderLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Enter your PhoneNumber',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mobile Number',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 60,
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
                              height: 30,
                              width: 1,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                '(+977)',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ),
                            Expanded(
                                child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '98********',
                              ),
                              style: TextStyle(fontSize: 14),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Text('Email id (optional)',
                        style: TextStyle(fontWeight: FontWeight.w700)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormWidget(hintText: 'Enter your Email'),
                    )
                  ],
                ),
              ),
              Text('Enter your phone number to login'),
              CustomButton(
                  color: CustomTheme.primaryColor,
                  text: "Next",
                  width: double.infinity,
                  navigation: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PasswordPage()));
                  },
                  height: 50),
              //Text('Already have an account?'),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  'Create an account',
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
