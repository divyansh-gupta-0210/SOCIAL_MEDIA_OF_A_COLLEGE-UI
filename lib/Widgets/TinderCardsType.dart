import 'package:connect_gitam/Screen/Sample.dart';
import 'package:connect_gitam/data/netflixdata.dart';
import 'package:connect_gitam/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:flutter/cupertino.dart';

class TinderCardsType extends StatefulWidget {
  final Content trending;

  const TinderCardsType({Key key, this.trending}) : super(key: key);

  @override
  _TinderCardsTypeState createState() => _TinderCardsTypeState();
}

class _TinderCardsTypeState extends State<TinderCardsType>
    with TickerProviderStateMixin {
  List<String> welcomeImages = [
    'assets/images/user0.jpg',
    'assets/images/user1.jpg',
    'assets/images/user2.jpg',
    'assets/images/user3.jpg',
    'assets/images/user4.jpg',
    'assets/images/user5.jpg'
  ];

  List<String> image = [];

  images() {
    for (var i = 0; i < originals.length; i++) {
      image.add(originals[i].imageUrl);
    }
    for (var i = 0; i < trending.length; i++) {
      image.add(trending[i].imageUrl);
    }

    return image;
  }

  List<String> name_movies = [];

  names() {
    for (var i = 0; i < originals.length; i++) {
      name_movies.add(originals[i].name);
    }
    for (var i = 0; i < trending.length; i++) {
      name_movies.add(trending[i].name);
    }
    return name_movies;
  }

  List<String> description_movies = [];

  description() {
    for (var i = 0; i < originals.length; i++) {
      description_movies.add(originals[i].description);
    }
    for (var i = 0; i < trending.length; i++) {
      description_movies.add(trending[i].description);
    }
    return description_movies;
  }


  @override
  Widget build(BuildContext context) {
    CardController controller;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(1, 50, 25, 25),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: TinderSwapCard(
                swipeUp: false,
                swipeDown: false,
                orientation: AmassOrientation.RIGHT,
                totalNum: images().length,
                stackNum: 3,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.width * 1.5,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardBuilder: (context, index) => Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Image(
                          height: 500,
                          width: 400,
                          image: AssetImage(
                            images()[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          left: 10.0,
                          bottom: 10.0,
                          right: 10.0,
                          child: Container(
                            padding: EdgeInsets.all(12.0),
                            height: 110.0,
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'EVENT NAME',
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  names()[index],
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  'EVENT BY',
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  width: 250,
                                  child: Text(
                                    description()[index],
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w600),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  elevation: 10,
                ),
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                    //Card is LEFT swiping
                    Navigator.push(this.context,
                        MaterialPageRoute(builder: (context) => Sample(name: names() ,description: description())));
                  } else if (align.x > 0) {
                    //Card is RIGHT swiping
                  }
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  // Get orientation & index of swiped card!

                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // FoldableSidebarBuilder(
                //     status: null, drawer: CustomDrawer(), screenContents: TinderCardsType()),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
