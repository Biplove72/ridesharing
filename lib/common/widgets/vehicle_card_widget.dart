import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  const VehicleCard(
      {super.key,
      required this.vehicleImage,
      required this.vehicleName,
      required this.color});

  final Widget vehicleImage;
  final String vehicleName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: color)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        height: 80,
        width: 95,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: vehicleImage),
            Text(vehicleName)
          ],
        ),
      ),
    );
  }
}
