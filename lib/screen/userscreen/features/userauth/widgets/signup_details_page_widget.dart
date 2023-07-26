import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:ridesharing_app/common/custom_button.dart';
import 'package:ridesharing_app/common/size_utlis.dart';
import 'package:ridesharing_app/common/theme.dart';
import 'package:ridesharing_app/common/widgets/text_form_widget.dart';
import 'package:ridesharing_app/screen/userscreen/features/userauth/screens/login_page.dart';

enum genderGroup { male, female, other }

class SignUpUserDetailsPageWidget extends StatefulWidget {
  const SignUpUserDetailsPageWidget({super.key});

  @override
  State<SignUpUserDetailsPageWidget> createState() => _SignUpUserDetailsState();
}

class _SignUpUserDetailsState extends State<SignUpUserDetailsPageWidget> {
  genderGroup _value = genderGroup.male;
  TextEditingController address = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController dateInput = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2030),
        builder: (context, child) {
          return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: CustomTheme.primaryColor, // header background color
                  onPrimary: Colors.white, // header text color
                  onSurface: Colors.green, // body text color
                ),
              ),
              child: child!);
        });

    if (pickedDate != null) {
      setState(() {
        dateInput.text = DateFormat('yyyy-MM-dd').format(pickedDate);
      });
    }
  }

  File? _image;
  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker(
    ImageSource source,
  ) async {
    final XFile? pickedImage = await _picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
        print(_image);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;
    final width = SizeUtils.width;
    final height = SizeUtils.height;
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text('User Signup', style: CustomTheme.textStyle18),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Fill up the form to continue',
                  style: CustomTheme.textStyledim14,
                ),
              ),
              Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black)),
                      width: 120,
                      height: 120,
                      child: _image != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.file(
                                _image!,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Center(
                              child: Image.asset(
                                'assets/images/upload.jpg',
                                height: 50,
                                width: 50,
                              ),
                            )),

                  // CircleAvatar(
                  //   radius: 60,
                  //   backgroundImage: _image != null
                  //       ? FileImage(
                  //           _image!,
                  //         )
                  //       : null,
                  // ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      left: 35,
                      child: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 200,
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 20),
                                      child: Column(
                                        children: [
                                          CustomButton(
                                            text: "Photo from gallery",
                                            width: 150,
                                            navigation: () {
                                              _openImagePicker(
                                                  ImageSource.gallery);
                                            },
                                            height: 50,
                                            color: Colors.lightBlueAccent,
                                          ),
                                          CustomButton(
                                            text: "Photo from camera",
                                            width: 150,
                                            navigation: () {
                                              _openImagePicker(
                                                  ImageSource.camera);
                                            },
                                            height: 50,
                                            color: Colors.lightBlueAccent,
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                            // Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.camera_alt,
                            size: 35,
                          )))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Full Legal Name',
                      style: CustomTheme.textStyle14,
                    ),
                  ),
                  TextFormWidget(
                    controller: name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter your legalname';
                      }
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Address',
                      style: CustomTheme.textStyle14,
                    ),
                  ),
                  TextFormWidget(
                    hintText: 'enter your Address',
                    controller: address,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter your address';
                      }
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Date of Birth',
                      style: CustomTheme.textStyle14,
                    ),
                  ),
                  TextFormField(
                    style: CustomTheme.textStyle14,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter date';
                      }
                      return null;
                    },
                    readOnly: true,
                    controller: dateInput,
                    onTap: () async {
                      _selectDate();
                    },
                    decoration: InputDecoration(
                        hintText: 'Choose your Date',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 20),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        suffixIcon: const Icon(
                          Icons.date_range_outlined,
                          color: CustomTheme.primaryColor,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Gender',
                      style: CustomTheme.textStyle14,
                    ),
                  ),
                  Row(
                    children: [
                      RadioMenuButton(
                          value: genderGroup.male,
                          groupValue: _value,
                          onChanged: (genderGroup? val) {
                            setState(() {
                              _value = val!;
                              print(_value);
                            });
                          },
                          child: const Text('male')),
                      RadioMenuButton(
                          value: genderGroup.female,
                          groupValue: _value,
                          onChanged: (genderGroup? val) {
                            setState(() {
                              _value = val!;
                              print(_value);
                            });
                          },
                          child: const Text('female')),
                      RadioMenuButton(
                          style: ButtonStyle(
                              iconColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red)),
                          value: genderGroup.other,
                          groupValue: _value,
                          onChanged: (genderGroup? val) {
                            setState(() {
                              _value = val!;
                              print(_value);
                            });
                          },
                          child: const Text('others')),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'By Signing up you are accepting all our Terms',
                  style: CustomTheme.textStyledim14,
                ),
              ),
              CustomButton(
                  color: CustomTheme.primaryColor,
                  text: 'Next',
                  width: double.infinity,
                  navigation: () {
                    if (_formKey.currentState!.validate() && _image != null) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Center(
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 5, color: Colors.green)),
                                      child: const Center(
                                        child: Icon(
                                          Icons.check,
                                          size: 50,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Text('Sign Up Successfully '),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: CustomButton(
                                    color: CustomTheme.primaryColor,
                                    text: 'Done',
                                    height: 56,
                                    width: double.infinity,
                                    navigation: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginPage()));
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    } else if (_image == null) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('have you upload your image ')));
                    }
                  })
            ],
          ),
        ),
      )),
    );
  }
}
