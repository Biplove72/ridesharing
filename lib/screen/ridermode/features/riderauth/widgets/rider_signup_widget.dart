import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ridesharing_app/common/custom_appbar.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/text_form_widget.dart';
import 'package:ridesharing_app/screen/ridermode/features/riderauth/screen/riderlogin_page.dart';

class RiderSignUpDetailsWidget extends StatefulWidget {
  const RiderSignUpDetailsWidget({super.key});

  @override
  State<RiderSignUpDetailsWidget> createState() => _RiderSignUpDetailsState();
}

class _RiderSignUpDetailsState extends State<RiderSignUpDetailsWidget> {
  XFile? _citizenshipImage;
  XFile? _drivingLicence;
  XFile? _vechilce;
  XFile? _drivingLicenceDoc;

  XFile? _selfiewithdrivingLicence;

  Future<XFile?> _pickImage() async {
    final picker = ImagePicker();
    XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);
    return pickedImage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      appBar: CustomAppbar(press: () {}, backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Register your vehicle',
                style: CustomTheme.textStyle16,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'We will need to verify your vehicle for authenticity and security purpose. Be sure to upload genuine documents.',
                  style: CustomTheme.textStyledim14,
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Vehicle',
                    style: CustomTheme.textStyle14,
                  ),
                ),
                TextFormWidget(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('vehicle Model', style: CustomTheme.textStyle14),
                ),
                TextFormWidget(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('Vehicle Registration Number',
                      style: CustomTheme.textStyle14),
                ),
                TextFormWidget(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('Vehicle Registration Document',
                      style: CustomTheme.textStyle14),
                ),
                const Text('Driving License', style: CustomTheme.textStyle14),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomImageUploaderContainer(
                      getimage: () async {
                        XFile? pickedImage = await _pickImage();

                        setState(() {
                          _drivingLicence = pickedImage;
                        });
                      },
                      child: _drivingLicence != null
                          ? Image.file(
                              File(_drivingLicence!.path),
                              width: 150,
                              height: 150,
                            )
                          : const ImageIcon(
                              AssetImage(
                                'assets/images/camera.png',
                              ),
                              color: Colors.grey,
                            )),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text('Driving License Document',
                        style: CustomTheme.textStyle14),
                  ),
                ),
                CustomImageUploaderContainer(
                    getimage: () async {
                      XFile? pickedImage = await _pickImage();

                      setState(() {
                        _drivingLicenceDoc = pickedImage;
                      });
                    },
                    child: _drivingLicenceDoc != null
                        ? Image.file(
                            File(_drivingLicenceDoc!.path),
                            fit: BoxFit.scaleDown,
                          )
                        : const ImageIcon(
                            AssetImage(
                              'assets/images/camera.png',
                            ),
                            color: Colors.grey,
                          )),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('Selfie With Driving Licence',
                      style: CustomTheme.textStyle14),
                ),
                CustomImageUploaderContainer(
                    getimage: () async {
                      XFile? pickedImage = await _pickImage();

                      setState(() {
                        _selfiewithdrivingLicence = pickedImage;
                      });
                    },
                    child: _selfiewithdrivingLicence != null
                        ? Image.file(
                            File(_selfiewithdrivingLicence!.path),
                            width: 150,
                            height: 150,
                          )
                        : const ImageIcon(
                            AssetImage(
                              'assets/images/camera.png',
                            ),
                            color: Colors.grey,
                          )),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('Vehicle Photo', style: CustomTheme.textStyle14),
                ),
                CustomImageUploaderContainer(
                    getimage: () async {
                      XFile? pickedImage = await _pickImage();

                      setState(() {
                        _vechilce = pickedImage;
                      });
                    },
                    child: _vechilce != null
                        ? Image.file(
                            File(_vechilce!.path),
                            width: 150,
                            height: 150,
                          )
                        : const ImageIcon(
                            AssetImage(
                              'assets/images/camera.png',
                            ),
                            color: Colors.grey,
                          )),
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomButton(
                  height: 56,
                  text: 'Register',
                  width: double.infinity,
                  navigation: () {
                    showModalBottomSheet<void>(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30.0),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            height: 250.hp,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 30.hp, horizontal: 20.wp),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      'Register your vehicle',
                                      style: CustomTheme.textStyle16,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      'We will need to verify your vehicle for authenticity\n and security purpose. Be sure to upload genuine\n documents.',
                                      style: TextStyle(),
                                    ),
                                  ),
                                  CustomButton(
                                      color: CustomTheme.primaryColor,
                                      text: 'Done',
                                      width: double.infinity,
                                      navigation: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RiderLoginPage()));
                                      },
                                      height: 56)
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  color: CustomTheme.primaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomImageUploaderContainer extends StatelessWidget {
  const CustomImageUploaderContainer(
      {super.key, this.width, required this.child, required this.getimage});

  final double? width;
  final Widget child;
  final VoidCallback getimage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: getimage,
      child: Container(
        height: 150.hp,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: child,
        ),
      ),
    );
  }
}
