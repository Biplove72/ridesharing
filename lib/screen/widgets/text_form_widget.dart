import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  final String? hintText;
  final Function()? ontap;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  const TextFormWidget(
      {super.key, this.hintText, this.controller, this.ontap, this.validator});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        validator: validator,
        onTap: ontap,
        decoration: InputDecoration(
            hintText: hintText,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
