import 'package:bike_rental_app/screens/bike_page/bike.dart';
import 'package:bike_rental_app/screens/landing_page/bike_rental.dart';
import 'package:bike_rental_app/screens/searchbike_page/search_bike.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => BikeRental(),
  "/searchbikelist": (BuildContext context) => SearchBikeList(),
  "/bike": (BuildContext context) => Bike(),
};