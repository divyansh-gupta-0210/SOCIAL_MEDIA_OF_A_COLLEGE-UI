import 'file:///C:/Users/omen/AndroidStudioProjects/flutter_social_ui_starter/flutter_social_ui/lib/Netflix/ContentHeader.dart';
import 'file:///C:/Users/omen/AndroidStudioProjects/flutter_social_ui_starter/flutter_social_ui/lib/Netflix/ContentLists.dart';
import 'file:///C:/Users/omen/AndroidStudioProjects/flutter_social_ui_starter/flutter_social_ui/lib/Netflix/NetflixAppBar.dart';
import 'file:///C:/Users/omen/AndroidStudioProjects/flutter_social_ui_starter/flutter_social_ui/lib/Netflix/Previews.dart';
import 'package:connect_gitam/data/netflixdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetflixScreen extends StatefulWidget {
  @override
  _NetflixScreenState createState() => _NetflixScreenState();
}

class _NetflixScreenState extends State<NetflixScreen> {
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
