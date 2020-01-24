import 'package:bike_rental_app/models/search_bikes.dart';
import 'package:flutter/material.dart';

class BikeFound extends StatelessWidget {

  final BikeSearch bike;
  BikeFound({ this.bike });
  
  @override
  Widget build(BuildContext context) {

    var themeColor = Theme.of(context).accentColor;
    var textStyle = TextStyle(color: themeColor, fontSize: 18.0);
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 20),
      leading: Container(
        width: 100,
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xFFF7F7F7),
          image: DecorationImage(
            image: AssetImage(bike.images[0])
          ),
          shape: BoxShape.circle
        ),
      ),
      title: Text(
        bike.name,
        style: textStyle,
      ),
      subtitle: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                  TextSpan(
                      text: '${'Rs.'} ${bike.price.toString()} ',
                      style: TextStyle(
                        color: Color(0xFF2980b9), 
                        fontSize: 14.0
                      )
                  ),
                  TextSpan(
                      text: " per day",
                      style: TextStyle(
                        color: themeColor,
                        fontSize: 14.0
                    )
                  )
                  ]
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                bike.rating.toString(),
                style: TextStyle(color: Color(0xFF2980b9)),
              ),
              SizedBox(
                width: 3.0,
              ),
              Icon(
                Icons.star,
                color: Color(0xFF2980b9),
                size: 12.0,
              )
            ],
          ),
        ),
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        size: 30.0,
        color: themeColor,
      ),
      onTap: () {
        Navigator.pushNamed(context, '/bike', arguments: bike);
      },
    );
  }
}
