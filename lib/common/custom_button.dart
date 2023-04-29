import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.borderside,
      required this.text,
      required this.width,
      required this.navigation,
      this.color,
      this.textColor,
      required this.height})
      : super(key: key);
  final String text;
  final double width;
  final double height;
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
              Radius.circular(20),
            )),
        height: height,
        minWidth: width,
        child: Text(
          text,
          style: TextStyle(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
