import 'package:flutter/material.dart';

import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/models/customer-request_model.dart';
import 'package:ridesharing_app/screen/ridermode/riders-views/customer_details.dart';

import 'package:ridesharing_app/screen/userscreen/map.dart';
import 'package:ridesharing_app/screen/widgets/trip_widgets.dart';

class CustomerRequest extends StatefulWidget {
  const CustomerRequest({super.key});

  @override
  State<CustomerRequest> createState() => _CustomerRequestState();
}

class _CustomerRequestState extends State<CustomerRequest> {
  @override
  Widget build(BuildContext context) {
    bool isOnline = true;
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
      containerChild = Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Hey, you got Trips Request !',
              style: CustomTheme.textStyle18),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(userRequest.imagaePath),
          ),
        ),
        Text(
          userRequest.name,
          style: CustomTheme.textStyle16,
        ),
        Flexible(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Total distance',
              style: CustomTheme.textStyledim14,
            ),
            Text(
              'Fair',
              style: CustomTheme.textStyledim14,
            ),
            Text(
              'Ride For',
              style: CustomTheme.textStyledim14,
            )
          ],
        )),
        Flexible(
            child: SizedBox(
          height: 10,
        )),
        Flexible(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              userRequest.totaldistance,
              style: CustomTheme.textStyle14,
            ),
            Text(
              userRequest.fair.toString(),
              style: CustomTheme.textStyle14,
            ),
            Text(
              'self',
              style: CustomTheme.textStyle14,
            )
          ],
        )),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TripWidget()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomButton(
              color: CustomTheme.primaryColor,
              text: 'View Details',
              width: double.infinity,
              navigation: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ),
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return CustomerDetails();
                      ;
                    });
              },
              height: 50),
        )
      ]);
    } else {
      // If the user has not made a request, display a message
      containerChild = Column(
        children: [
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
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            child: Stack(
              children: [
                MapPage(),
                Positioned(
                  top: 66,
                  right: 20,
                  left: 251,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            isOnline ? 'Online' : 'Offline',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                        Switch(
                            activeColor: Colors.green,
                            inactiveThumbColor: Colors.white,
                            value: isOnline,
                            onChanged: (value) {
                              setState(() {
                                isOnline = value;
                              });
                            }),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: hasRequest ? 70 : 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        height: hasRequest
                            ? MediaQuery.of(context).size.height * 0.6
                            : MediaQuery.of(context).size.height * 0.2,
                        child: containerChild,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
