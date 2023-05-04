import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/userscreen/custom_drawer.dart';
//import 'package:ridesharing_app/screen/userscreen/drawer_page.dart';
import 'package:ridesharing_app/screen/userscreen/location-selection.dart';
import 'package:ridesharing_app/screen/userscreen/map.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    void _showModalBottomSheet(BuildContext context) {
      showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          )),
          builder: (context) => DraggableScrollableSheet(
              initialChildSize: 0.4,
              maxChildSize: 0.9,
              minChildSize: 0.32,
              expand: false,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: ChooseLocation(),
                );
              }));
    }

    return SafeArea(
      child: Scaffold(
        //
        body: Builder(builder: (context) {
          return Stack(
            children: [
              MapPage(),

              Positioned(
                  top: 30,
                  left: 10,
                  child: CircleAvatar(
                      backgroundColor: CustomTheme.primaryColor,
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CustomDrawer()));
                          },
                          icon: Icon(Icons.menu)))),

              Positioned(
                  top: 40,
                  right: 10,
                  child: CircleAvatar(
                      backgroundColor: CustomTheme.primaryColor,
                      child: Icon(Icons.share))),

              Positioned(
                  top: 100,
                  right: 10,
                  child: CircleAvatar(
                      backgroundColor: CustomTheme.primaryColor,
                      child: Icon(Icons.circle))),

              // Bottom Sheet
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Choose your Choose Your Vehicle',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                child: Column(
                                  children: [
                                    Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: CustomTheme.primaryColor),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Container(
                                        margin: EdgeInsets.only(top: 10),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width: 70,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Image.asset(
                                            'assets/images/download.png',
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: CustomButton(
                            color: CustomTheme.primaryColor,
                            text: 'Next',
                            width: double.infinity,
                            navigation: () {
                              _showModalBottomSheet(context);
                            },
                            height: 50),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );

    // return GestureDetector(
    //   onTap: () {
    //     FocusScope.of(context).unfocus();
    //   },
    //   child: Scaffold(
    //     body: Padding(
    //       padding: const EdgeInsets.only(top: 20),
    //       child: SingleChildScrollView(
    //         child: Stack(
    //           children: [
    //             Container(
    //               height: 800,
    //               width: double.infinity,
    //               child: Image.asset(
    //                 'assets/images/download.jpeg,',
    //                 height: 800,
    //                 width: double.infinity,
    //               ),
    //             ),
    //             Text('hello')
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
  }
}
