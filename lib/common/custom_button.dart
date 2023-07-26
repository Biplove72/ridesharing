import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.borderside,
      required this.text,
      this.width,
      required this.navigation,
      this.color,
      this.textColor,
      this.height})
      : super(key: key);
  final String text;
  final double? width;
  final double? height;
  final VoidCallback navigation;
  final Color? color;
  final Color? textColor;
  final BorderSide? borderside;
  // final Color sideColors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        color: color,
        onPressed: navigation,
        shape: RoundedRectangleBorder(
            side: borderside ?? BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            )),
        height: height ?? 50,
        minWidth: width,
        child: Text(
          text,
          style: TextStyle(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
