import 'package:flutter/material.dart';
import 'package:ridesharing_app/common/custom_appbar.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/screen/ridermode/initial_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        
        press: () {
        Navigator.pop(context);
      }),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        height: 80,
                        child: Image.asset(
                          'assets/images/user-image.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text('UserName'),
                        Text('986723630'),
                        Text('user@gmail.com')
                      ],
                    ),
                  )
                ],
              ),
            ),
            CustomListTile(
              title: 'Payments',
              subTitle: 'Payment by wallet or cash',
              onTap: () {},
            ),
            CustomListTile(
                subTitle: 'Your Trip History',
                onTap: () {},
                title: 'Your Trips'),
            CustomListTile(
              subTitle: 'Explore the different offers',
              onTap: () {},
              title: 'Corporate User',
            ),
            CustomListTile(
              subTitle: 'Change or modify your preference',
              onTap: () {},
              title: 'settinngs',
            ),
            CustomButton(
                color: CustomTheme.primaryColor,
                text: 'RiderMode',
                width: double.infinity,
                navigation: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RiderModePage()));
                },
                height: 50),
            CustomCloumn(
                icon: Icon(Icons.privacy_tip_sharp),
                onTap: () {},
                title: 'Privacy Policy'),
            CustomCloumn(
                icon: Icon(Icons.album_outlined),
                onTap: () {},
                title: 'About Company'),
            CustomCloumn(
                icon: Icon(Icons.cloud_download_outlined),
                onTap: () {},
                title: 'check for updates'),
            CustomCloumn(
                icon: Icon(Icons.people_sharp),
                onTap: () {},
                title: 'Refer and Earn'),
            CustomCloumn(
                icon: Icon(Icons.cloud_download_outlined),
                onTap: () {},
                title: 'Terms and conditions'),
            CustomCloumn(
                icon: Icon(Icons.cloud_download_outlined),
                onTap: () {},
                title: 'ratings'),
            CustomCloumn(
                icon: Icon(Icons.support_agent_sharp),
                onTap: () {},
                title: 'support'),
            CustomCloumn(
                icon: Icon(Icons.logout), onTap: () {}, title: 'Logout')
          ],
        ),
      )),
    );
  }
}

class CustomCloumn extends StatelessWidget {
  const CustomCloumn(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.title});

  final Icon icon;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 50,
        child: ListTile(
          leading: icon,
          onTap: onTap,
          title: Text(title),
        ));
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.subTitle,
      required this.onTap,
      required this.title,
      this.leadingIcon});
  final Icon? leadingIcon;
  final String title;
  final String subTitle;
  final void Function()? onTap;
  //final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        leading: leadingIcon,
        trailing: Icon(Icons.arrow_forward_ios_sharp),
        subtitle: Text(subTitle),
        title: Text(title),
      ),
    );
  }
}
