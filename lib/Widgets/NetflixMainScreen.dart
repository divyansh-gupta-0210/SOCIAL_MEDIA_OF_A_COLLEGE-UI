import 'package:connect_gitam/Screen/NetflixScreen.dart';
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

    );
  }
}
