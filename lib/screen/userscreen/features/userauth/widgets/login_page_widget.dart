import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_appbar.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/form-validation.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/text_form_widget.dart';
import 'package:ridesharing_app/screen/userscreen/features/userauth/screens/password_page.dart';
import 'package:ridesharing_app/screen/userscreen/features/userauth/widgets/signup_page_widget.dart';

class LoginPageWidget extends StatelessWidget {
  LoginPageWidget({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final width = SizeUtils.width;
    final height = SizeUtils.height;
    return Scaffold(
      appBar: CustomAppbar(
          press: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter your PhoneNumber',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.hp),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mobile Number',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        // child: Container(
                        //   height: 56.hp,
                        //   width: double.infinity,
                        //   decoration: BoxDecoration(
                        //       border: Border.all(color: Colors.grey),
                        //       borderRadius: BorderRadius.circular(30)),
                        //   child: Row(
                        //     children: [
                        //       Padding(
                        //         padding: const EdgeInsets.symmetric(
                        //             horizontal: 10),
                        //         child: Image.asset(
                        //           'assets/images/np.png',
                        //           height: 20,
                        //         ),
                        //       ),
                        //       Container(
                        //         height: 20.hp,
                        //         width: 1,
                        //         color: Colors.grey,
                        //       ),
                        //       const Padding(
                        //         padding: const EdgeInsets.only(
                        //           left: 10,
                        //         ),
                        //         child: Text(
                        //           '(+977)',
                        //           style: TextStyle(
                        //               fontSize: 14, color: Colors.grey),
                        //         ),
                        //       ),

                        //       Expanded(
                        //           child: TextFormWidget(
                        //         decorationborder: InputBorder.none,
                        //         hintText: '98************',
                        //       )),

                        //     ],
                        //   ),
                        // ),

                        child: TextFormWidget(
                          hintText: '98*********',
                          validator: FormValidator.validatePhoneNumber,
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
              ),
              // const Text('Enter your phone number to login'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: CustomButton(
                  color: CustomTheme.primaryColor,
                  text: "Next",
                  width: double.infinity,
                  navigation: () {
                    print('hello');
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PasswordPage()));

                      //
                    }
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Center(
                    child: Text(
                  'Don\'t have an account?',
                  style: CustomTheme.textStyle16,
                )),
              ),
              Center(
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpWidget())),
                  child: Text('Create an account',
                      style: CustomTheme.textStyle16.copyWith(
                          decoration: TextDecoration.underline,
                          color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
