import 'package:flutter/material.dart';

class SearchBikeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chennai, India"),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[

              // Date criteria for search
              Row(
                children: <Widget>[
                  Text("21 Apr, 8am"),
                  Icon(Icons.arrow_forward),
                  Text("26 Apr, 6pm")
                ],
              ),

              // Search Dropdown
              
              
            ],
          ),
        ),
      ),
    );
  }
}