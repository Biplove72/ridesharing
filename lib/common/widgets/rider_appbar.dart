import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/ridermode/features/riderdrawer/riderdrawer.dart';

class RiderCustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  RiderCustomAppBar(
      {
      //required this.press,
      this.title,
      //this.trailing,
      this.toggle,
      required this.iconbutton,
      required this.backgroundColor});

  Widget iconbutton;
  //final VoidCallback press;
  final String? title;
  final Color backgroundColor;
  //final Widget? trailing;
  final Function? toggle;

  @override
  State<RiderCustomAppBar> createState() => _RiderCustomAppBarState();

  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _RiderCustomAppBarState extends State<RiderCustomAppBar> {
  @override
  Size get preferredSize => const Size.fromHeight(60);
  bool isOn = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        leading: widget.iconbutton,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          widget.title ?? '',
          style: CustomTheme.textStyle18,
        ),
        actions: <Widget>[
          Container(
            //margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Row(
                children: [
                  Text(
                    isOn ? 'online' : 'offline',
                    style: CustomTheme.textStyle14
                        .copyWith(color: isOn ? Colors.green : Colors.red),
                  ),
                  Switch(
                      activeColor: Colors.green,
                      value: isOn,
                      onChanged: (val) {
                        widget.toggle!();

                        setState(() {
                          isOn = val;
                        });
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
