import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/distance_showcontainer.dart';
import 'package:ridesharing_app/common/widgets/location_container%20-widget.dart';
import 'package:ridesharing_app/common/widgets/user_image_widget.dart';
import 'package:ridesharing_app/screen/ridermode/features/riders-views/rider_arrived.dart';

class CustomerDetails extends StatefulWidget {
  CustomerDetails({
    super.key,
  });

  @override
  State<CustomerDetails> createState() => _CustomerDetailsState();
}

class _CustomerDetailsState extends State<CustomerDetails> {
  int currentfare = 125;
  int decrementcount = 0;
  int incrementcount = 0;
  void decrement() {
    setState(() {
      currentfare -= 5;
      decrementcount++;
    });
  }

  bool isvisible = true;

  void increment() {
    setState(() {
      currentfare += 5;
      incrementcount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(205), topRight: Radius.circular(205))),
        // height: MediaQuery.of(context).size.height * 0.89,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(children: [
              const Text(
                'Trip Details',
                style: CustomTheme.textStyle16,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: UserImageWIdget()),
              const Text(
                'Binod Khanl',
                style: CustomTheme.textStyle16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.call, color: Colors.red),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.message,
                    color: Colors.red,
                  )
                ],
              ),
              LocationStoreContainer(
                  imgurl: 'assets/images/pin.png',
                  title: 'Pickup Location',
                  location: 'location fromApi'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: LocationStoreContainer(
                    imgurl: 'assets/images/flags.png',
                    title: 'stop1',
                    location: 'location fromApi'),
              ),
              LocationStoreContainer(
                  imgurl: 'assets/images/flags.png',
                  title: 'stop2',
                  location: 'location fromApi'),
              Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: DistanceContainer(
                      distance: '2.5km', distancetime: '1hr25 min 20sec')),
              const ImageIcon(
                AssetImage(
                  'assets/images/currency.png',
                ),
                size: 50,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      text: '-5',
                      textColor: Colors.black,
                      navigation: () {
                        decrement();
                      },
                      height: 50,
                      borderside: const BorderSide(color: Colors.red),
                    ),
                    Column(
                      children: [
                        Text(
                          'Current Fare',
                          style: CustomTheme.textStyle16,
                        ),
                        Text(
                          '${currentfare}',
                          style: CustomTheme.textStyle16,
                        )
                      ],
                    ),
                    CustomButton(
                      text: '+5',
                      navigation: () {
                        increment();
                      },
                      height: 50,
                      color: CustomTheme.primaryColor,
                      // borderside: BorderSide(color: Colors.red),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      text: '${currentfare}',
                      textColor: Colors.black,
                      navigation: () {
                        setState(() {
                          currentfare = currentfare + 20;
                        });
                      },
                      height: 50,
                      borderside: const BorderSide(color: Colors.red),
                    ),

                    CustomButton(
                      text: '${currentfare + 15}',
                      textColor: Colors.black,
                      navigation: () {
                        setState(() {
                          currentfare = currentfare + 15;
                        });
                      },
                      height: 50,
                      borderside: const BorderSide(color: Colors.red),
                    ),

                    CustomButton(
                      text: '${currentfare + 5}',
                      textColor: Colors.black,
                      navigation: () {
                        setState(() {
                          currentfare = currentfare + 5;
                        });
                      },
                      height: 50,
                      borderside: const BorderSide(color: Colors.red),
                    ),
                    CustomButton(
                      text: '${currentfare + 10}',
                      textColor: Colors.black,
                      navigation: () {},
                      height: 50,
                      borderside: const BorderSide(color: Colors.red),
                    ),
                    // PriceContainer(text: currentfare.toString()),
                    // PriceContainer(

                    //   text: '${currentfare + 5}',
                    // ),
                    // PriceContainer(text: '${currentfare + 15}'),
                    // PriceContainer(
                    //   text: '150',
                    // )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomButton(
                    color: CustomTheme.primaryColor,
                    text: 'Send Request',
                    width: double.infinity,
                    navigation: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RiderArrived()));
                    },
                    height: 50),
              )
            ]),
          ),
        ));
  }
}

// class PriceContainer extends StatelessWidget {
//   const PriceContainer({super.key, required this.text});
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       width: 65,
//       decoration: BoxDecoration(
//           border: Border.all(color: Colors.red),
//           borderRadius: BorderRadius.circular(15)),
//       child: Center(child: Text(text)),
//     );
//   }
// }
