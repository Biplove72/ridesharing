import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/custom_tile_widget.dart';
import 'package:ridesharing_app/common/widgets/inovice_logo.dart';
import 'package:ridesharing_app/screen/userscreen/map.dart';

class InvoiceDetails extends StatelessWidget {
  InvoiceDetails({super.key});

  @override
  final width = SizeUtils.width;
  final height = SizeUtils.height;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        MapPage(),
        Positioned(
          bottom: 60,
          right: 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'invoice',
                    style: CustomTheme.textStyle18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 2,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 110),
                            child: InvoiceLogo(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: IconButton(
                                onPressed: () {},
                                icon: ImageIcon(
                                    AssetImage(
                                      'assets/images/downloadicon.png',
                                    ),
                                    color: CustomTheme.primaryColor)),
                          ),
                        ],
                      )),
                  Column(
                    children: [
                      CustomColumn(
                        leading: 'Booking id',
                        trailing: 'Booking id',
                        textstyle: CustomTheme.textStyle16
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      CustomColumn(
                        leading: 'Base Fare',
                        trailing: 'Rs. 510',
                        textstyle: CustomTheme.textStyle16
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      CustomColumn(
                        leading: 'Distance Fare',
                        trailing: 'Rs.150',
                        textstyle: CustomTheme.textStyle16
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      CustomColumn(
                        leading: 'Admin Fee',
                        trailing: 'Rs.150',
                        textstyle: CustomTheme.textStyle16
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      CustomColumn(
                        leading: 'Total',
                        trailing: 'Rs.150',
                        textstyle: CustomTheme.textStyle16,
                      ),
                      CustomColumn(
                        leading: 'Payable Amount',
                        trailing: 'Rs.150',
                        textstyle: CustomTheme.textStyle16,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: CustomButton(
                        color: CustomTheme.primaryColor,
                        text: 'Done',
                        width: double.infinity,
                        navigation: () {},
                        height: 50),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
