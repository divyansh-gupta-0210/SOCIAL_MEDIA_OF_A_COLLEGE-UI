import 'package:connect_gitam/Screen/NetflixScreen.dart';
import 'package:connect_gitam/Screen/SearchNetflix.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NetflixMainScreen extends StatefulWidget {
  @override
  _NetflixMainScreenState createState() => _NetflixMainScreenState();
}

class _NetflixMainScreenState extends State<NetflixMainScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      extendBodyBehindAppBar: true  ,
      body: NetflixScreen(),
      bottomNavigationBar: CurvedNavigationBar(
        color: Theme.of(context).primaryColor,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Theme.of(context).primaryColor,
        height: 48,
        items: <Widget>[
          Icon(Icons.search, size: 24, color: Colors.black),
          Icon(Icons.home, size: 24, color: Colors.black),
          Icon(Icons.favorite, size: 24, color: Colors.black)
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(this.context,
                MaterialPageRoute(builder: (context) => SearchNetflix()));
          }
          else if (index==2){
            Navigator.push(this.context,
                MaterialPageRoute(builder: (context) => SearchNetflix()));
          }
        },
        animationDuration: Duration(
          milliseconds: 200,
        ),
        index: 1,
        animationCurve: Curves.bounceInOut,
      ),
    );
  }
}
