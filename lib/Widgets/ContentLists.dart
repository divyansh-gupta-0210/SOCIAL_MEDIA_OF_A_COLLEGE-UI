import 'package:connect_gitam/Screen/SearchNetflix.dart';
import 'package:connect_gitam/models/models.dart';
import 'package:flutter/material.dart';

class ContentLists extends StatelessWidget {
  final bool isOriginals;
  final List<Content> contentLists;
  final String title;

  const ContentLists(
      {Key key,
      this.isOriginals = false,
      @required this.contentLists,
      @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
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
          Container(
            height: isOriginals ? 500.0 : 220.0,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              scrollDirection: Axis.horizontal,
              itemCount: contentLists.length,
              itemBuilder: (BuildContext context, int index) {
                final Content content = contentLists[index];
                return GestureDetector(
                  onTap: () => print(content.name),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    height: isOriginals ? 400.0 : 200.0,
                    width: isOriginals ? 200.0 : 130.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(content.imageUrl),
                      fit: BoxFit.cover,
                    )),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
