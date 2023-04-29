import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ridesharing_app/common/theme.dart';

class PinContainer extends StatelessWidget {
  const PinContainer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CustomTheme.gray, borderRadius: BorderRadius.circular(15)),
      height: 60,
      width: 60,
      child: TextFormField(
        decoration: InputDecoration(border: InputBorder.none),
        showCursor: false,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
