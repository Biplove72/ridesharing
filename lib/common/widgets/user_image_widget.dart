import 'package:flutter/material.dart';

class UserImageWIdget extends StatelessWidget {
  const UserImageWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.red,
        ),
        Positioned(
          top: 3,
          left: 3,
          right: 3,
          bottom: 3,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
          ),
        ),
        Positioned(
          bottom: 5,
          left: 5,
          right: 5,
          top: 5,
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/userimge.jpg'),
          ),
        ),
      ],
    );
  }
}
