import 'package:flutter/material.dart';

class BikeCarousal extends StatefulWidget {
  @override
  _BikeCarousalState createState() => _BikeCarousalState();

  final List images;
  BikeCarousal({ this.images });

}

class _BikeCarousalState extends State<BikeCarousal> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          color: Color(0xFFE7E7E7),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(widget.images[0]),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}