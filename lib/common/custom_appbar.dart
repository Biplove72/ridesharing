import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/theme.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar(
      {required this.press,
      this.title,
      this.trailing,
      required this.backgroundColor});
  @override
  Size get preferredSize => const Size.fromHeight(60);

  final VoidCallback press;
  final String? title;
  final Color backgroundColor;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            title ?? '',
            style: CustomTheme.textStyle18,
          ),
          actions: <Widget>[
            if (trailing != null) trailing!,
          ],
          leading: CircleAvatar(
            backgroundColor: CustomTheme.lightGray,
            child: IconButton(
                onPressed: press,
                icon: Icon(Icons.arrow_back, color: Colors.black)),
          )),
    );
  }
}

// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
//   final String? title;
//   final Color backgroundColor;

//   CustomAppBar({required this.title, required this.backgroundColor});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text(title ?? ''),
//       backgroundColor: backgroundColor,
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// }
