import 'package:connect_gitam/data/Messages.dart';
import 'package:connect_gitam/models/UserText.dart';
import 'package:connect_gitam/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final UserText user1;

  const ChatScreen({
    Key key,
    this.user1,
  }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    return Container(
      margin: isMe
          ? EdgeInsets.only(top: 8, bottom: 8, left: 80.0)
          : EdgeInsets.only(top: 8, bottom: 8, right: 80.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: isMe ? Color(0xFFFEF9EB) : Color(0xFFFFEFEE),
        borderRadius: isMe
            ? BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                topLeft: Radius.circular(15.0),
              )
            : BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.time,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 8,
          ),
          Text(message.text,
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  _buildMessageComposer() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 1),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFFFEF9EB),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.insert_emoticon),
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                onChanged: (value) {},
                decoration:
                    InputDecoration.collapsed(hintText: 'Send a message'),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user1.name,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  child: ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
