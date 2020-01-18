import 'package:bike_rental_app/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:bike_rental_app/screens/landing_page/bike_rental.dart';


void main() => runApp(BikeRentalApp());

class BikeRentalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: BikeRental(),
    );
  }
}