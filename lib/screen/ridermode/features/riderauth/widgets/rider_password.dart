import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_appbar.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/text_form_widget.dart';
import 'package:ridesharing_app/screen/ridermode/features/riderauth/screen/riderreset_password_page.dart';
import 'package:ridesharing_app/screen/ridermode/features/riders-views/trips_views.dart';
//import 'package:ridesharing_app/screen/userscreen/main_page.dart';

class RiderPasswordPageWidget extends StatelessWidget {
  const RiderPasswordPageWidget({super.key});

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
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
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
                TextFormWidget(),
              ],
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(children: [
                    Text(
                      'Forgot your password ? ',
                      style: CustomTheme.textStyle14,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Resetpassword())),
                      child: Text(
                        'Reset password  ',
                        style: CustomTheme.textStyle14.copyWith(
                            color: Colors.red,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ])
                  // child: RichText(
                  //     text: const TextSpan(children: [
                  //   TextSpan(
                  //       text: 'Forgot your password?',
                  //       style: TextStyle(
                  //         color: Colors.black,
                  //       )),
                  //   TextSpan(
                  //       text: 'Reset Password',
                  //       style: TextStyle(
                  //           decoration: TextDecoration.underline,
                  //           color: Colors.red)),
                  // ])),
                  ),
            ),
            CustomButton(
              color: CustomTheme.primaryColor,
              text: 'Next',
              width: double.infinity,
              navigation: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomerRequest()));
              },
            )
          ],
        ),
      )),
    );
  }
}
