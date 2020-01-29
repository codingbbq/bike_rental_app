import 'package:bike_rental_app/components/dot_indicator.dart';
import 'package:flutter/material.dart';

class BikeCarousal extends StatefulWidget {
  @override
  _BikeCarousalState createState() => _BikeCarousalState();

  final List images;
  BikeCarousal({this.images});
}

class _BikeCarousalState extends State<BikeCarousal> {

  final _controller = new PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          controller: _controller,
          itemCount: widget.images.length,
          itemBuilder: (BuildContext context, int index) {
            return ConstrainedBox(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    color: Color(0xFFE7E7E7),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          widget.images[index % widget.images.length],
                        ), 
                        fit: BoxFit.contain
                      )
                    ),
              ), 
              constraints: const BoxConstraints.expand(),
            );
          },
        ),

        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            color: Colors.grey[800].withOpacity(0.5),
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: DotsIndicator(
                controller: _controller,
                    itemCount: widget.images.length,
                    onPageSelected: (int page) {
                      _controller.animateToPage(
                        page,
                        duration: _kDuration,
                        curve: _kCurve,
                      );
                    },
              ),
            ),
          ),
        )
      ],
    );
  }
}
