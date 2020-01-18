import "package:flutter/material.dart";
import 'package:bike_rental_app/components/date_selector.dart';

class BikeRental extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Chennai, India",
          style: TextStyle(color: Color(0xFF9092a7)),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Theme.of(context).accentColor,
            onPressed: (){},
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                DateSelectorComponent(type: "start"),
                DateSelectorComponent(type: "end"),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}