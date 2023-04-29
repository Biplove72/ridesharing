import 'package:flutter/material.dart';
//import 'package:ridesharing_app/screen/signup_page.dart';
import 'package:ridesharing_app/screen/initial_page.dart';

void main() {
  runApp(RideSharingApp());
}

class RideSharingApp extends StatelessWidget {
  const RideSharingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RideSharing(),
    );
  }
}
