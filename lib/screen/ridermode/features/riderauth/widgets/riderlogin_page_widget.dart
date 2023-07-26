import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_appbar.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/text_form_widget.dart';
import 'package:ridesharing_app/screen/ridermode/features/riderauth/screen/rider_password_page.dart';
import 'package:ridesharing_app/screen/ridermode/features/riderauth/screen/ridersignup_details_page.dart';

class RiderLoginPageWidget extends StatelessWidget {
  const RiderLoginPageWidget({super.key});

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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Enter your PhoneNumber',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
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
                          height: 55,
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
                              const Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  '(+977)',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              Expanded(
                                  child: TextFormField(
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '98********',
                                ),
                                style: const TextStyle(fontSize: 14),
                              )),
                            ],
                          ),
                        ),
                      ),
                      const Text('Email id (optional)',
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextFormWidget(hintText: 'Enter your Email'),
                      )
                    ],
                  ),
                ),
                const Text('Enter your phone number to login'),
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
                              builder: (context) => const RiderPasswordPage()));
                    },
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Don\'t have an account?',
                      style: CustomTheme.textStyle14,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const RiderSignupDetailsPage())),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Create an account',
                          style: CustomTheme.textStyle14.copyWith(
                              color: Colors.red,
                              decoration: TextDecoration.underline)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
