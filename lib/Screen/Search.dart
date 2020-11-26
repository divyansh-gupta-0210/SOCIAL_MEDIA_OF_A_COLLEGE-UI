import 'package:connect_gitam/data/netflixdata.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Hi'),
      ),
    );
  }
}
//
// class Datasearch extends SearchDelegate<String> {
//
//   List<String> name_movies = [];
//
//   names() {
//     for (var i = 0; i < originals.length; i++) {
//       name_movies.add(originals[i].name);
//     }
//     for (var i = 0; i < trending.length; i++) {
//       name_movies.add(trending[i].name);
//     }
//     return name_movies;
//   }
//
//   List<String> recent = [];
//
//   // ignore: non_constant_identifier_names
//   recent_searched() {
//     for (var i = 0; i < originals.length; i++) {
//       name_movies.add(originals[i].name);
//     }
//     return name_movies;
//   }
//
//
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {},
//       )
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: AnimatedIcon(
//         icon: AnimatedIcons.menu_arrow,
//         progress: transitionAnimation,
//       ),
//       onPressed: () {},
//     );
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     // TODO: implement buildResults
//     throw UnimplementedError();
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestionList = query.isEmpty? recent_searched(): names();
//
//     return ListView.builder(itemBuilder: (context, index) => ListTile(
//       leading: Icon(Icons.location_city),
//       title: Text(suggestionList[index]),
//     ),
//       itemCount: recent.length,
//     );
//
//   }
// }
