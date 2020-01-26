import 'package:bike_rental_app/models/search_bikes.dart';
import 'package:flutter/material.dart';

class Bike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var textStyle = TextStyle(color: Theme.of(context).accentColor, fontSize: 20.0);

    final BikeSearch bike = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Casual bikes",
          style: textStyle
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E7E7),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(bike.images[0]),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),

              SizedBox(height: 20.0),

              Text(
                bike.name,
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 24.0
                )
              ),

              SizedBox(height: 15.0),

              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${"Rs"} ${bike.price}',
                      style: TextStyle(
                        color: Color(0xFF2980b9),
                        fontSize: 18.0
                      ),
                    ),
                    TextSpan(
                      text: ' /day',
                      style: textStyle.copyWith(fontSize: 18.0 )
                    )
                  ]
                ),
              ),

              SizedBox(height: 15.0,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "About the bike: ",
                    style: textStyle.copyWith(fontSize: 18.0),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 15.0,),
                  Text(
                    bike.about,
                    style: TextStyle(
                      color: Color(0xFFB7B7B7),
                      fontSize: 16.0
                    ),
                    textAlign: TextAlign.left,
                  ),

                  SizedBox(height: 20.0,),

                  Text(
                    "Location: ",
                    style: textStyle.copyWith(fontSize: 18.0),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 15.0,),
                  Text(
                    bike.location,
                    style: TextStyle(
                      color: Color(0xFFB7B7B7),
                      fontSize: 16.0
                    ),
                    textAlign: TextAlign.left,
                  ),

                  SizedBox(height: 20.0,),

                  Text(
                    "Terms and Conditions: ",
                    style: textStyle.copyWith(fontSize: 18.0),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 15.0,),
                  Text(
                    bike.terms,
                    style: TextStyle(
                      color: Color(0xFFB7B7B7),
                      fontSize: 16.0
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 20.0,),

                ],
              )

            ],
          ),
        ),
      ),

      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width * 0.70,
        decoration: BoxDecoration(
          borderRadius:  BorderRadius.circular(20.0),
        ),
        child: FloatingActionButton.extended(
          backgroundColor: Color(0xFF2980b9),
          onPressed: (){},
          elevation: 0,
          label: Text(
            "BOOK NOW",
            style: TextStyle(
              fontSize: 18.0
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
