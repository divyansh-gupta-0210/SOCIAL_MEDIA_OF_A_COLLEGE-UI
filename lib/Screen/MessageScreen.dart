import 'package:connect_gitam/Widgets/Category_Selector.dart';
import 'package:connect_gitam/Widgets/RecentChats.dart';
import 'package:connect_gitam/data/Messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Chats',
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          RecentChats(),
        ],
      ),
    );
  }
}
