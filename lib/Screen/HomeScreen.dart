import 'package:connect_gitam/Widgets/InstagramType.dart';
import '../Netflix/NetflixTab.dart';
import 'package:connect_gitam/Widgets/TinderCardsType.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:connect_gitam/Widgets/Custom_Drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            'EVENTS',
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                letterSpacing: 10.0),
          ),
          bottom: TabBar(
            // controller: _tabController,
            onTap: (index){
              _controller.index = _controller.previousIndex;
            },
            indicatorWeight: 3.0,
            labelColor: Theme.of(context).primaryColor,
            labelStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
            unselectedLabelStyle: TextStyle(fontSize: 18.0),
            tabs: [
              Tab(
                text: 'Trending',
              ),
              Tab(
                text: 'Latest',
                // child: Instagram(),
              ),
              Tab(
                text: 'Clubs',
              )
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          children: [

            TinderCardsType(),
            InstagramType(),
            NetflixBottomBar(),
          ],
        ),
      ),
    );
  }
}
