import 'package:connect_gitam/Widgets/ContentHeader.dart';
import 'package:connect_gitam/Widgets/ContentLists.dart';
import 'package:connect_gitam/Widgets/Previews.dart';
import 'package:connect_gitam/data/netflixdata.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Search.dart';

class NetflixScreen extends StatefulWidget {
  @override
  _NetflixScreenState createState() => _NetflixScreenState();
}

class _NetflixScreenState extends State<NetflixScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContentHeader(featuredContent: sintelContent),
            Divider(
              color: Colors.white,
              height: 0.5,
            ),
            SizedBox(height: 10),
            Previews(title: 'Previews', contentLists: previews),
            ContentLists(title: 'My List', contentLists: myList),
            ContentLists(
                title: 'Netflix Originals',
                contentLists: originals,
                isOriginals: true),
            ContentLists(title: 'Trending', contentLists: trending),
            // Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),
          ],
        ),
      ),
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
                MaterialPageRoute(builder: (context) => Search()));
            index = 1;
          } else if (index == 2) {
            Navigator.push(this.context,
                MaterialPageRoute(builder: (context) => Search()));
            index = 1;
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
