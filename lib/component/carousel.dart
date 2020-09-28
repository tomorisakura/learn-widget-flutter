import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselList extends StatefulWidget {
  //getter setter to passing parameter on widget
  // if u pass a widget to component clasess
  final String text;
  const CarouselList({Key key, @required this.text}) : super(key: key);
  @override
  _CarouselListState createState() => _CarouselListState();
}

class _CarouselListState extends State<CarouselList> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [1, 2, 3, 4, 5].map((e) {
          return Builder(builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(color: Colors.blue),
              child: Container(
                alignment: Alignment.center,
                child: Text(widget.text + e.toString()),
              ),
            );
          });
        }).toList(),
        options: CarouselOptions(
          height: 200,
          aspectRatio: 16 / 16,
          autoPlay: true,
        ));
  }
}
