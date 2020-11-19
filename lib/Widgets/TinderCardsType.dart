import 'package:connect_gitam/Widgets/Custom_Drawer.dart';
import 'package:connect_gitam/Widgets/TinderButtomButton.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';

class TinderCardsType extends StatefulWidget {
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
                orientation: AmassOrientation.RIGHT,
                totalNum: 6,
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
                            '${welcomeImages[index]}',
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
                                SizedBox(height: 20.0),
                                Text(
                                  'EVENT BY',
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600),
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
              ),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // FoldableSidebarBuilder(
                //     status: null, drawer: CustomDrawer(), screenContents: null),
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
