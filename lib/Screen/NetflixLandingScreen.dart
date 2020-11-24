import 'package:connect_gitam/data/LandingScreenData.dart';
import 'package:connect_gitam/models/restaurant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetflixLandingImage extends StatefulWidget {
  final String name;
  final String imageUrl;
  final String description;

  NetflixLandingImage(this.name, this.imageUrl, this.description);

  @override
  _NetflixLandingImageState createState() => _NetflixLandingImageState();
}

class _NetflixLandingImageState extends State<NetflixLandingImage> {

  _buildRestaurants() {
    List<Widget> restaurantList = [];
    restaurants.forEach(
      (Restaurant restaurant) {
        restaurantList.add(
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, blurRadius: 2.0, spreadRadius: 1.0),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(13.0),
                      child: Image(
                        image: AssetImage(restaurant.imageUrlRestaurant),
                        height: 80.0,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      margin: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            restaurant.name,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            restaurant.address,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

    return Column(children: restaurantList);
  }

  // final generatedList = List.generate(30, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: SizedBox(
                        height: 250,
                        width: 150,
                        child: Image.asset(widget.imageUrl),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            widget.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                          ),
                          splashColor: Colors.black12,
                          label: Text(
                            'About ' + widget.name,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.event,
                            color: Colors.black,
                          ),
                          splashColor: Colors.black12,
                          label: Text(
                            'Latest Events By ' + widget.name,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                      child: Container(
                        height: 100,
                        child: Text(
                          widget.description,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          onPressed: null,
                          child: Column(
                            children: [
                              Icon(
                                Icons.web,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  'Website',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        MaterialButton(
                          onPressed: null,
                          child: Column(
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  'Share',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    // ListView.builder(itemBuilder: null)
                    // Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),Text('hi'),
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.imageUrl),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black87, BlendMode.darken),
                  ),
                ),
              ),
            ),
            expandedHeight: MediaQuery.of(context).size.height/1.42,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: MediaQuery.of(context).size.height*1.32,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index)  {
                if (index>0)
                  return null;
                return _buildRestaurants();
              },
            ),
          ),
        ],
      ),
    );
  }
}
