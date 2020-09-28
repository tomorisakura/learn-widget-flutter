import 'package:flutter/material.dart';
import '../component/carousel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: CarouselList(
              text: "Home",
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
