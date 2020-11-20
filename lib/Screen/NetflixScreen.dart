import 'package:connect_gitam/Widgets/Assests.dart';
import 'package:connect_gitam/Widgets/NetflixAppBar.dart';
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
    return Column(
      children: [
        Positioned(
        child: NetflixAppBar(_scrollOffSet),
      ),
        Container(
          child: Column(
            children: [
              // CustomScrollView(
              //   controller: _scrollController,
              //   slivers: [
              //     SliverToBoxAdapter(
              //       child: Container(
              //         height: 1000.0,
              //         color: Colors.orange,
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
