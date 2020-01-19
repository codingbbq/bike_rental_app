import 'package:bike_rental_app/models/bike_selection.dart';
import 'package:flutter/material.dart';

class BikeTypeMenuItem extends StatelessWidget {

  final BikeSelection bike;

  BikeTypeMenuItem({ this.bike });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xFFf7f7f7),
              shape: BoxShape.circle
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                bike.img
              ),
            )
          ),
        ),
        SizedBox(height: 10.0,),
        Text(
          bike.bike,
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 18.0
          ),
        )
      ],
    );
  }
}