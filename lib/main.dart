import 'package:bike_rental_app/routes/routes.dart';
import 'package:bike_rental_app/theme/style.dart';
import 'package:flutter/material.dart';


void main() => runApp(BikeRentalApp());

class BikeRentalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      initialRoute: "/",
      routes: routes,
    );
  }
}