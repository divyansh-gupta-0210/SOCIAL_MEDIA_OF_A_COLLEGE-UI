import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {

  Widget _buildListItem(BuildContext context, DocumentSnapshot document)
  {
    return ListTile(
      title: Row(
        children: <Widget>[
          Expanded(
            child: Text(document['name']),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(document['value'].toString()),
          )
        ],
      ),
      onTap: (){
        Firestore.instance.runTransaction((transaction) async{
          DocumentSnapshot freshdata= await transaction.get(document.reference);
          await transaction.update(freshdata.reference,{
            'value': freshdata['value']+1,
          });
        });
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Event Registrations'),),
      body: StreamBuilder(
          stream:Firestore.instance.collection('events').snapshots(),
          builder: (context,snapshot){
            if(!snapshot.hasData) return Text('Loading...');
            return ListView.builder(
              itemExtent: 80.0,
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context,index)=> _buildListItem(context, snapshot.data.documents[index]),);
          }
      ),
    );
  }
}
