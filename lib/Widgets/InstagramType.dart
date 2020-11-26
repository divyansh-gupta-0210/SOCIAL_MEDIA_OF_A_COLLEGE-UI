import 'package:connect_gitam/Screen/MessageScreen.dart';
import 'package:connect_gitam/Screen/Search.dart';
import 'package:connect_gitam/data/netflixdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:connect_gitam/Widgets/Following_Users.dart';
import 'package:connect_gitam/Widgets/Posts_Carousel.dart';
import 'package:connect_gitam/data/data.dart';
import 'Following_Users.dart';
import 'Posts_Carousel.dart';

class InstagramType extends StatefulWidget {
  @override
  _InstagramTypeState createState() => _InstagramTypeState();
}

class _InstagramTypeState extends State<InstagramType> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: ListView(
              children: <Widget>[
                FollowingUsers(),
                PostCarousel(
                    pageController: _pageController,
                    title: 'Posts',
                    posts: posts),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 68,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 68),
                    painter: BNBCustomPaint(),
                  ),
                  Center(
                    heightFactor: 0.65,
                    child: FloatingActionButton(
                      onPressed: () => Navigator.push(
                          this.context,
                          MaterialPageRoute(
                              builder: (context) => MessageScreen())),
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.chat),
                      elevation: 0.1,
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () => showSearch(
                              context: context, delegate: Datasearch()),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        IconButton(
                          icon: Icon(Icons.notifications),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BNBCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(3.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class Datasearch extends SearchDelegate<String> {
  // ignore: non_constant_identifier_names
  final List<String> name_movies = [];

   names() {
    for (var i = 0; i < originals.length; i++) {
      name_movies.add(originals[i].name);
    }
    for (var i = 0; i < trending.length; i++) {
      name_movies.add(trending[i].name);
    }
    return name_movies;
  }

  final List<String> recent = [];

  // ignore: non_constant_identifier_names
  recent_searched() {
    for (var i = 0; i < originals.length; i++) {
      recent.add(originals[i].name);
    }
    return recent;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = ' ';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recent_searched() : names();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.location_city),
        title: Text(suggestionList[index]),
      ),
      itemCount: 10,
    );
  }
}
