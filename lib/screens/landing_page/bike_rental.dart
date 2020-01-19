import 'package:bike_rental_app/components/bike_type_selection.dart';
import 'package:bike_rental_app/models/bike_selection.dart';
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
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                DateSelectorComponent(type: "start"),
                DateSelectorComponent(type: "end"),
              ],
            ),
            SizedBox(height: 20.0,),
            GridView.count(
              childAspectRatio: 1.2,
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              children: bikes.map((b) => BikeTypeMenuItem(bike: b)).toList()
            ),
            SizedBox(height: 25),
            FlatButton(
              color: Color(0xFFF7F7F7),
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(40.0)
                )
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/searchbikelist');
              },
              child: Text(
                "PROCEED",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Theme.of(context).accentColor

                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}