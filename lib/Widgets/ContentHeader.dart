import 'package:connect_gitam/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:connect_gitam/Widgets/NetflixAppBar.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;
  ScrollController _scrollController;
  double _scrollOffSet = 0.0;

  ContentHeader({Key key, this.featuredContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(featuredContent.imageUrl),
                  fit: BoxFit.cover)),
        ),
        NetflixAppBar(_scrollOffSet),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
        Positioned(
          bottom: 110.0,
          // left: MediaQuery.of(context).size.width/2.5,
          child: Center(
            child: SizedBox(
              width: 250,
              child: Image.asset(featuredContent.titleImageUrl),
            ),
          ),
        )
      ],
    );
  }
}
