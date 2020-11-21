import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:connect_gitam/Widgets/Assests.dart';

class NetflixAppBar extends StatefulWidget {
  NetflixAppBar(double scrollOffSet);

  @override
  _NetflixAppBarState createState() => _NetflixAppBarState();
}

class _NetflixAppBarState extends State<NetflixAppBar> {

  final double scrollOffset;

  _NetflixAppBarState({Key key, this.scrollOffset = 0.0});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: size.width,
      color: Colors.white
          .withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Image.asset(Assets.netflixLogo0),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'CANTEENS',
                  onTap: () {
                    print("CANTEENS");
                  }
                ),
                _AppBarButton(
                  title: 'MOVIES',
                  onTap: () {
                    print("MOVIES");
                  },
                ),
                _AppBarButton(
                  title: 'MY LIST',
                  onTap: () {
                    print("MY LIST");
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const _AppBarButton({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
      ),
    );
  }
}
