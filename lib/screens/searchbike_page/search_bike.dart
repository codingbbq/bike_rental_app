import 'package:bike_rental_app/models/bike_selection.dart';
import 'package:bike_rental_app/models/search_bikes.dart';
import 'package:bike_rental_app/screens/searchbike_page/bike_list.dart';
import 'package:flutter/material.dart';

class SearchBikeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    BikeSelection _bikeSelection = bikes[0];

    var themeColor = Theme.of(context).accentColor;
    var textStyle = TextStyle(color: themeColor, fontSize: 18.0);
        return Scaffold(
          appBar: AppBar(
            title: Text("Chennai, India"),
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal : 20.0, vertical: 10.0),
            child: Container(
              child: Column(
                children: <Widget>[
    
                  // Date criteria for search
                  Row(
                    children: <Widget>[
                      Text(
                        "21 Apr, 8am",
                        style: TextStyle(
                          color: Color(0xFF2980b9),
                          fontSize: 18.0
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF8f91a7),
                        size: 18.0,
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        "26 Apr, 6pm",
                        style: TextStyle(
                          color: Color(0xFF2980b9),
                          fontSize: 18.0
                        ),
                      )
                    ],
                  ),
    
                  SizedBox(height: 15.0,),
                  // Search Dropdown
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F7F7),
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: DropdownButton(
                      isExpanded: true,
                      underline: SizedBox(),
                      icon: Icon(Icons.keyboard_arrow_down),
                      value: _bikeSelection,
                      onChanged: (BikeSelection newBike){
                        _bikeSelection = newBike;
                      },
                      items: bikes.map<DropdownMenuItem<BikeSelection>>((BikeSelection b){
    
                        return DropdownMenuItem<BikeSelection>(
                            value: b,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  b.img,
                                  width: 40,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  b.bike,
                                  style: TextStyle(
                                    color: themeColor,
                                    fontSize: 18.0
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
    
                    ),
                  ),
    
                  SizedBox(height: 15.0,),
    
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Rides available",
                        style: textStyle,
                  ),
                  DropdownButton(
                    hint: Text(
                      "Sort by",
                      style: textStyle,
                    ),
                    underline: SizedBox(),
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: <DropdownMenuItem>[
                      DropdownMenuItem(
                        child: Text(
                          "Price",
                          style: textStyle,
                        ),
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Rating",
                          style: textStyle,
                        ),
                      )
                    ], 
                    onChanged: (value) {},
                  )
                ],
              ),

              SizedBox(height: 15.0,),

              Expanded(
                child: ListView.builder(
                  itemCount: bikefound.length,
                  itemBuilder: (BuildContext context, int index){
                    return BikeFound(bike: bikefound[index]);
                  },
                ),
              )
                ],
            ),
        ),
      ),
    );
  }
}