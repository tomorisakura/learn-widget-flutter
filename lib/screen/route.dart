import 'package:flutter/material.dart';
import '../screen/favorite.dart';
import '../screen/map.dart';
import '../screen/home.dart';

class Routes extends StatefulWidget {
  @override
  _Routes createState() => _Routes();
}

class _Routes extends State<Routes> {
  int _indexSelected = 0;
  String title = 'Home Page';
  final _listPage = <Widget>[Home(), Favorite(), Map()];

  final bottomNavigation = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
    BottomNavigationBarItem(
        icon: Icon(Icons.favorite), title: Text("Favorite")),
    BottomNavigationBarItem(icon: Icon(Icons.map), title: Text("Map"))
  ];

  @override
  Widget build(BuildContext context) {
    final _bottomBar = BottomNavigationBar(
      items: bottomNavigation,
      currentIndex: _indexSelected,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: onClickIndex,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          Icon(Icons.account_circle),
          // Icon(Icons.account_balance_wallet)
        ],
      ),
      body: _listPage[_indexSelected],
      bottomNavigationBar: _bottomBar,
    );
  }

  void onClickIndex(int index) {
    setState(() {
      _indexSelected = index;
      switch (index) {
        case 0:
          title = 'Home';
          break;
        case 1:
          title = 'Favorite';
          break;
        case 2:
          title = 'Map';
          break;
      }
    });
  }
}
