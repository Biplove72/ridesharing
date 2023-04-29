import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';

class Invoice extends StatelessWidget {
  const Invoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              Text(
                'invoice',
                style: CustomTheme.textStyledim14,
              ),
              Container(
                height: 1,
                color: Colors.black,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 129),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: CustomTheme.purpleBlue,
                          radius: 70,
                        ),
                        Positioned(
                            top: 20,
                            left: 20,
                            bottom: 20,
                            right: 20,
                            child: CircleAvatar(
                                backgroundColor: Color(0xFF473080))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 80, left: 40),
                    child: Icon(
                      Icons.download_for_offline_sharp,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              CustomButton(
                  text: 'Close',
                  width: double.infinity,
                  navigation: () {},
                  height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
