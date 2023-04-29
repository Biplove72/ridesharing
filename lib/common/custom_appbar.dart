import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar(
      {super.key, required this.press, this.title, this.appbarcolor});
  @override
  Size get preferredSize => const Size.fromHeight(60);

  final VoidCallback press;
  final String? title;
  final Color? appbarcolor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 1,
        backgroundColor: appbarcolor,
        title: Text(
          title ?? '',
          style: const TextStyle(fontSize: 20),
        ),
        leading: CircleAvatar(
          radius: 5,
          backgroundColor: Colors.white,
          child: IconButton(
              onPressed: press,
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
        ));
  }
}
