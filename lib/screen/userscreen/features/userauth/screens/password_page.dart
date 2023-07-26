import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_appbar.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/form-validation.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/text_form_widget.dart';
import 'package:ridesharing_app/screen/userscreen/features/user_journey/screens/main_page.dart';
import 'package:ridesharing_app/screen/userscreen/features/userauth/screens/reset_password.dart';

class PasswordPage extends StatelessWidget {
  PasswordPage({super.key});

  final _formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          press: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Enter Your Password',
                  style: CustomTheme.textStyle18,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text('Password', style: CustomTheme.textStyle16),
                  ),
                  TextFormWidget(
                    validator: (value) {
                      if (value!.length < 8) {
                        return 'password must be 8 character';
                      }
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Resetpassword())),
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Forgot your password?',
                        style: CustomTheme.textStyle14),
                    TextSpan(
                        text: ' Reset Password',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600,
                            color: Colors.red)),
                  ])),
                ),
              ),
              CustomButton(
                color: CustomTheme.primaryColor,
                text: 'Next',
                width: double.infinity,
                navigation: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
