import 'package:flutter/material.dart';

//

class CustomColumn extends StatelessWidget {
  CustomColumn({super.key, required this.leading, required this.trailing});
  final String? leading;
  final String? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(leading ?? ''),
        Text(trailing ?? ''),
      ]),
    );
  }
}
