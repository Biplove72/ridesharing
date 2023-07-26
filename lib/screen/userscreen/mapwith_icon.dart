import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/userscreen/features/user_drawer/screen/custom_drawer.dart';
import 'package:ridesharing_app/screen/userscreen/map.dart';

class MapStack extends StatelessWidget {
  MapStack({super.key});

  MapPage mapitem = MapPage();

  // void getCurrentPosition() async {
  //   Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high);

  //   print(position);
  //   LatLng lang = LatLng(position.latitude, position.longitude);
  //   print('hello');
  //   print(lang);
  // }

  @override
  // void getCurrentPosition() async {
  //   Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high);
  //   print(position);
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MapPage(),
          Positioned(
              top: 30,
              left: 10,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomDrawer()));
                },
                icon: Container(
                  height: 37,
                  width: 36,
                  color: CustomTheme.primaryColor,
                  child: const Icon(
                    Icons.menu,
                    size: 25,
                  ),
                ),
                color: Colors.white,
              )),
          Positioned(
              top: 80,
              right: 10,
              child: IconButton(
                onPressed: () {
                  final getposition = mapitem.getCurrenPosiotion();
                  return getposition;
                  print('hello');
                },
                icon: const Icon(
                  Icons.my_location,
                  size: 35,
                ),
                color: CustomTheme.primaryColor,
              )),
          Positioned(
              top: 40,
              right: 10,
              child: IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage('assets/images/Icons_share.png'),
                    size: 55,
                    color: CustomTheme.primaryColor,
                  ))),
        ],
      ),
    );
  }
}
