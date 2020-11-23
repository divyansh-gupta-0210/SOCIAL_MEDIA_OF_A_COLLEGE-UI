import 'package:connect_gitam/Widgets/ContentHeader.dart';
import 'package:connect_gitam/Widgets/ContentLists.dart';
import 'package:connect_gitam/Widgets/Previews.dart';
import 'package:connect_gitam/data/netflixdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetflixScreen extends StatefulWidget {
  @override
  _NetflixScreenState createState() => _NetflixScreenState();
}

class _NetflixScreenState extends State<NetflixScreen> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContentHeader(featuredContent: sintelContent),
            SizedBox(height: 10),
            Previews(title: 'Previews', contentLists: previews),
            ContentLists(title: 'My List', contentLists: myList),
            ContentLists(title: 'Netflix Originals', contentLists: originals, isOriginals: true),
            ContentLists(title: 'Trending', contentLists: trending),
            // Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),
          ],
        ),
      ),
    );

  }
}
