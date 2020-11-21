
import 'package:connect_gitam/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'NetflixAppBar.dart';
import 'NetflixVerticalIconButton.dart';


class ContentHeader extends StatelessWidget {
  final Content featuredContent;
  ScrollController _scrollController;
  double _scrollOffSet = 0.0;

  ContentHeader({Key key, this.featuredContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        NetflixAppBar(_scrollOffSet),
        Positioned(
          bottom: 150,
          left: MediaQuery.of(context).size.width / 5,
          child: SizedBox(
            width: 250,
            child: Image.asset(featuredContent.titleImageUrl),
          ),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
        Positioned(
          left: 0,
          bottom: 40,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              VerticalIconButton(
                icon: Icons.add,
                title: 'List',
                onTap: () => print('Info'),
              ),
              _PlayButton(),
              VerticalIconButton(
                icon: Icons.info_outline,
                title: 'Info',
                onTap: () => print('Info'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Colors.black,
          borderRadius: BorderRadius.circular(7),
      ),
      child: FlatButton.icon(
        padding:  EdgeInsets.fromLTRB(15, 5, 20, 5),
        onPressed: () => print('Play'),
        icon: const Icon(
          Icons.play_arrow,
          size: 30.0,
          color: Colors.white,
        ),
        label: const Text(
          'Play',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 16.0, color: Colors.white),
        ),
      ),
    );
  }
}
