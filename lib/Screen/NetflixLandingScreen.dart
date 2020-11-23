import 'package:connect_gitam/Widgets/NetflixMainScreen.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
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
                      padding: EdgeInsets.only(top: 10),
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
                      padding: EdgeInsets.fromLTRB(5, 25, 5, 0),
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
                                padding: const EdgeInsets.only(top: 8.0),
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
                    // Divider(
                    //   color: Colors.grey.shade500,
                    // )
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
            expandedHeight: 600.0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NetflixMainScreen()));
              },
            ),
          )
        ],
      ),
    );
  }
}
