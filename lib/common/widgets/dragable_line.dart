import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/size_utlis.dart';

class DragableLine extends StatelessWidget {
  const DragableLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFC4C4C4), borderRadius: BorderRadius.circular(20)),
      height: 5.hp,
      width: 70.hp,
    );
  }
}
