import 'package:flutter/material.dart';

import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/rider_appbar.dart';
import 'package:ridesharing_app/models/customer-request_model.dart';
import 'package:ridesharing_app/screen/ridermode/features/riderdrawer/riderdrawer.dart';
import 'package:ridesharing_app/screen/ridermode/features/riders-views/customer_details.dart';

import 'package:ridesharing_app/screen/userscreen/map.dart';
import 'package:ridesharing_app/common/widgets/location_container%20-widget.dart';
import 'package:ridesharing_app/common/widgets/user_image_widget.dart';

class CustomerRequest extends StatefulWidget {
  const CustomerRequest({super.key});

  @override
  State<CustomerRequest> createState() => _CustomerRequestState();
}

class _CustomerRequestState extends State<CustomerRequest> {
  @override
  final width = SizeUtils.width;
  final height = SizeUtils.height;
  bool view = true;
  bool _isOn = true;

  void toggle() {
    setState(() => _isOn = !_isOn);
  }

  Widget build(BuildContext context) {
    Widget containerChild;
    bool hasRequest = true;
    UserRequest userRequest = UserRequest(
        "1",
        "This is a sample request",
        'Binod',
        'assets/images/userimge.jpg',
        129,
        '2.5km'); // create an instance of the UserRequest class with the request details
    if (hasRequest) {
      // If the user has made a request, display the request details
      containerChild = Padding(
        padding: EdgeInsets.symmetric(vertical: 30.hp, horizontal: 20.wp),
        child: Column(children: [
          const Text('Hey, you got Trips Request !',
              style: CustomTheme.textStyle18),
          Padding(
              padding: EdgeInsets.only(
                top: 20.hp,
              ),
              child: const UserImageWIdget()),
          Text(
            userRequest.name,
            style: CustomTheme.textStyle16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Text(
                      'Total distance',
                      style: CustomTheme.textStyledim14,
                    ),
                    Text(
                      'get distance',
                      style: CustomTheme.textStyle14,
                    )
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'Fair',
                      style: CustomTheme.textStyledim14,
                    ),
                    Text(
                      'get price',
                      style: CustomTheme.textStyle14,
                    )
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'Ride for',
                      style: CustomTheme.textStyledim14,
                    ),
                    Text(
                      'self',
                      style: CustomTheme.textStyle14,
                    ),
                  ],
                )
              ],
            ),
          ),
          LocationStoreContainer(
              imgurl: 'assets/images/pin.png',
              title: 'Pickup Location',
              location: 'location fromApi'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: LocationStoreContainer(
                imgurl: 'assets/images/pin.png',
                title: 'stop1',
                location: 'location fromApi'),
          ),
          LocationStoreContainer(
              imgurl: 'assets/images/pin.png',
              title: 'stop2',
              location: 'location fromApi'),
          CustomButton(
              color: CustomTheme.primaryColor,
              text: 'View Details',
              width: double.infinity,
              navigation: () {
                setState(() {});
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30.0),
                      ),
                    ),
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return CustomerDetails();
                      ;
                    });
              },
              height: 50)
        ]),
      );
    } else {
      // If the user has not made a request, display a message
      containerChild = Column(
        children: const [
          Text(
            'Today',
            style: CustomTheme.textStyle16,
          ),
          Flexible(
              child: SizedBox(
            height: 20,
          )),
          Text('No Requests yet !')
        ],
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: RiderCustomAppBar(
        iconbutton: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const RiderDrawer()));
            },
            icon: const Icon(
              Icons.menu,
              color: CustomTheme.primaryColor,
            )),
        toggle: () {},
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            child: Stack(
              children: [
                MapPage(),
                Visibility(
                  // visible: view,
                  child: Positioned(
                      top: 140,
                      bottom: hasRequest ? 100.hp : 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: hasRequest
                            ? const EdgeInsets.symmetric(horizontal: 20)
                            : const EdgeInsets.symmetric(horizontal: 0),
                        child: Wrap(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              //height: hasRequest ? 526.hp : 200.hp,
                              child: containerChild,
                            ),
                          ],
                        ),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
