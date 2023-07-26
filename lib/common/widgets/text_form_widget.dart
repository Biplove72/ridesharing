import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/theme.dart';

class TextFormWidget extends StatefulWidget {
  final String? hintText;
  final TextInputType? keyboardtype;
  final Function()? ontap;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final InputBorder? decorationborder;
  final Icon? sufficicon;
  final bool? readonly;
  final bool? obsecureText;
  final Widget? prefix;
  TextFormWidget(
      {super.key,
      this.keyboardtype,
      this.hintText,
      this.controller,
      this.ontap,
      this.validator,
      this.sufficicon,
      this.decorationborder,
      this.obsecureText,
      this.prefix,
      this.readonly});

  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        readOnly: widget.readonly ?? false,
        validator: widget.validator,
        obscureText: widget.obsecureText ?? false,
        onTap: widget.ontap,
        keyboardType: widget.keyboardtype,
        style: CustomTheme.textStyle14,
        decoration: InputDecoration(
            errorStyle: TextStyle(height: 0),
            prefix: widget.prefix,
            suffixIcon: widget.sufficicon,
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            hintText: widget.hintText,
            border: widget.decorationborder ??
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))));
  }
}
