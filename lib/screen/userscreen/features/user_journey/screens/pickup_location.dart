import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/theme.dart';

class PickUpLocation extends StatefulWidget {
  PickUpLocation({super.key, required this.onSelected});
  final Function(String) onSelected;

  @override
  State<PickUpLocation> createState() => _PickUpLocationState();
}

class _PickUpLocationState extends State<PickUpLocation> {
  final List<String> departure = [
    'kathmandu,Baneswor',
    'kathmandu,AnamNagar,',
    'Kathamandu, teaching Hospital',
    'kathmandu,PasuPatinath Temple',
    'Kathmandu, samymbhunath',
    'kathmandu,paywellOffice'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          height: MediaQuery.of(context).size.height * 0.9,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const ImageIcon(
                      AssetImage('assets/images/pin.png'),
                      color: CustomTheme.primaryColor,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter Your Destination Location',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: CustomTheme.primaryColor,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                        'choose on map',
                        style: TextStyle(
                            color: CustomTheme.primaryColor, fontSize: 18),
                      )),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: departure.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: GestureDetector(
                              onTap: () {
                                widget.onSelected(departure[index]);
                                Navigator.pop(context);
                              },
                              child: Text(departure[index])),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
