import 'package:flutter/material.dart';

class BikeTypeMenuItem extends StatelessWidget {

  final String category;

  BikeTypeMenuItem({ this.category });

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
                "assets/images/super_bike.png"
              ),
            )
          ),
        ),
        SizedBox(height: 10.0,),
        Text(
          "Super Bikes",
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 18.0
          ),
        )
      ],
    );
  }
}