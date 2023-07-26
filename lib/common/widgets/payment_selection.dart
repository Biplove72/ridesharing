import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';

class PaymentSelection extends StatelessWidget {
  const PaymentSelection({
    super.key,
    //required this.price,
  });

  //final TextEditingController price;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 25.hp),
              child: const ImageIcon(
                AssetImage('assets/images/currency.png'),
                size: 27,
                color: CustomTheme.primaryColor,
              ),
            ),
          ),
          SizedBox(
            width: 10.wp,
          ),
          Column(
            children: [
              const Text(
                'offer Your Fare',
                style: CustomTheme.textStyle14,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(
                    'NPR. ',
                    style: CustomTheme.textStyle16,
                  ),
                  Container(
                    height: 45.hp,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.red)),
                    child: TextFormField(
                      style: CustomTheme.textStyle14,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 5, right: 5, top: 10, bottom: 10),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(width: 40.wp),
          Column(
            children: [
              const Text(
                'PaymentType',
                style: CustomTheme.textStyle14,
              ),
              Row(
                children: [
                  CustomButton(
                    text: 'Cash',
                    width: 74.wp,
                    navigation: () {},
                    height: 32.hp,
                    color: CustomTheme.skyBlue,
                  ),
                  SizedBox(
                    width: 10.wp,
                  ),
                  CustomButton(
                    text: 'wallet',
                    width: 74.wp,
                    navigation: () {},
                    height: 32.hp,
                    color: CustomTheme.primaryColor,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
