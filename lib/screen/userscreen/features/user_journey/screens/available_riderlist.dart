import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/dragable_line.dart';
import 'package:ridesharing_app/models/available_rider_model.dart';
//import 'package:ridesharing_app/screen/userscreen/rider_details.dart';
import 'package:ridesharing_app/screen/userscreen/features/user_journey/screens/rider_details_screen.dart';

class AvailableRiderList extends StatefulWidget {
  AvailableRiderList({Key? key}) : super(key: key);

  //List<AvailableRider> riderdetails = [];
  @override
  State<AvailableRiderList> createState() => _AvailableRiderListState();
}

class _AvailableRiderListState extends State<AvailableRiderList> {
  @override
  final width = SizeUtils.width;

  final height = SizeUtils.height;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        color: Colors.transparent,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: rider.length,
          itemBuilder: (context, index) {
            final List rideritem = rider;
            final riderdetails = rider[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Card(
                color: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: width.wp,
                  //height: height.hp * 20,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8, right: 8, top: 2, bottom: 5),
                          child: Container(
                              height: 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100)),
                              child: const LinearProgressIndicator()),
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/images/user-image.png'),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    riderdetails.name,
                                    style: CustomTheme.textStyle14,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    '1250  Trips',
                                    style: CustomTheme.textStyledim14,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, bottom: 25),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '4.5',
                                    style: CustomTheme.textStyle14,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'NPR ${riderdetails.price}',
                                  style: CustomTheme.textStyle16
                                      .copyWith(color: Colors.red),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text('Times'),
                                ),
                                const Text(
                                  'Distance : 2.5 km',
                                  style: CustomTheme.textStyle12,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomButton(
                                borderside: const BorderSide(
                                    color: CustomTheme.primaryColor),
                                text: 'Decline',
                                width: 120,
                                height: 35,
                                textColor: Colors.red,
                                navigation: () {
                                  setState(() {
                                    rideritem.removeAt(index);
                                    print('remove');
                                  });
                                },
                              ),
                              CustomButton(
                                  text: 'Accept',
                                  width: 120,
                                  height: 35,
                                  color: CustomTheme.primaryColor,
                                  navigation: () {
                                    Navigator.pop(context);

                                    RiderBottomSheet(context);
                                    //Navigator.pop(context);
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(builder: (context) {
                                    //   return RiderDetails();

                                    // }

                                    // ));
                                    // showNextBottomSheet(context);
                                  })
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void RiderBottomSheet(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      context: context,
      builder: ((context) => DraggableScrollableSheet(
          initialChildSize: 0.7,
          maxChildSize: 0.8,
          minChildSize: 0.2,
          expand: false,

          //snap: true,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Stack(
                children: [
                  RiderDetails(),
                ],
              ),
            );
          })));
  ;
}
