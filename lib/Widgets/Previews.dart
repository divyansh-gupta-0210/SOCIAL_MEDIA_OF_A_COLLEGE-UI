import 'package:connect_gitam/models/models.dart';
import 'package:flutter/material.dart';

class Previews extends StatelessWidget {
  final String title;
  final List<Content> contentLists;

  const Previews({Key key, this.title, this.contentLists}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.5),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(7),
            ),
            height: 156,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 12.0, 0, 8.0),
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: contentLists.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Content content = contentLists[index];
                    return GestureDetector(
                      onTap: () => print(content.name),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(content.imageUrl),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: content.color, width: 4),
                            ),
                          ),
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.black87,
                                    Colors.black45,
                                    Colors.transparent
                                  ],
                                  stops: [
                                    0,
                                    0.25,
                                    1
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter),
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: content.color, width: 4),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: SizedBox(
                              height: 60.0,
                              child: Image.asset(content.titleImageUrl),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
        )
        // Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),Text('Hi'),
      ],
    );
  }
}
