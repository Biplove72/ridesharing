import 'package:flutter/material.dart';

class AvailableRider {
  String name;
  String imageurl;
  String ratings;
  String price;
  String distance;

  AvailableRider({
    required this.distance,
    required this.imageurl,
    required this.name,
    required this.price,
    required this.ratings,
  });
}

List<AvailableRider> rider = [
  AvailableRider(
      distance: '1.5',
      imageurl: '',
      name: 'Sagar khanal',
      price: '200',
      ratings: '2.5'),
  AvailableRider(
      distance: '2.3 km',
      imageurl: '',
      name: 'Abisikh khatiwada',
      price: '250',
      ratings: '4.5'),
  AvailableRider(
      distance: '1 km',
      imageurl: '',
      name: 'Binod khanal',
      price: '300',
      ratings: '4.5'),
  AvailableRider(
      distance: '2 km',
      imageurl: '',
      name: 'Biplove Khanl',
      price: '300',
      ratings: '3.5'),
  AvailableRider(
      distance: '2.5',
      imageurl: '',
      name: 'Saurav Khanal',
      price: '200',
      ratings: '3.8'),
  AvailableRider(
      distance: '1.3 km',
      imageurl: '',
      name: 'Suabh',
      price: '123',
      ratings: '4')
];
