import 'package:connect_gitam/Screen/NetflixScreen.dart';
import 'file:///C:/Users/omen/AndroidStudioProjects/flutter_social_ui_starter/flutter_social_ui/lib/Netflix/NetflixAppBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NetflixBottomBar extends StatefulWidget {
  @override
  _NetflixBottomBarState createState() => _NetflixBottomBarState();
}

class _NetflixBottomBarState extends State<NetflixBottomBar> {

  ScrollController _scrollController;
  double _scrollOffSet = 0.0;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffSet = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // extendBodyBehindAppBar: true  ,
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
          debugPrint('Current Index Is $index');
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