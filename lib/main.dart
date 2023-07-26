import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridesharing_app/common/theme.dart';
//import 'package:ridesharing_app/screen/signup_page.dart';
import 'package:ridesharing_app/screen/initial_page.dart';

void main() {
  runApp(RideSharingApp());
}

class RideSharingApp extends StatelessWidget {
  const RideSharingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: CustomTheme.backgroundColor),
      home: RideSharing(),

      // home: RiderDetails()
    );
  }
}
