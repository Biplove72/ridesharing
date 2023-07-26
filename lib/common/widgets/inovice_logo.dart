import 'package:flutter/material.dart';

class InvoiceLogo extends StatelessWidget {
  const InvoiceLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        CircleAvatar(
          radius: 60,
          backgroundColor: Colors.red,
        ),
        Positioned(
            bottom: 5,
            top: 5,
            left: 5,
            right: 5,
            child: CircleAvatar(
              backgroundColor: Colors.purple,
            )),
        Positioned(
            top: 20,
            bottom: 20,
            left: 5,
            right: 5,
            child: ImageIcon(
              AssetImage(
                'assets/images/paper-bag.png',
              ),
              size: 10,
              color: Colors.white,
            )),
        Positioned(
          bottom: 15,
          left: 5,
          top: 5,
          child: CircleAvatar(
            backgroundColor: Colors.yellow,
            child: ImageIcon(AssetImage('assets/images/currency.png')),
          ),
        )
      ],
    );
  }
}
