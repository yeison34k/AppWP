import 'package:flutter/material.dart';
import 'package:whats_app_de_berga/models/chat.dart';
import 'package:whats_app_de_berga/resources/constants.dart';
import 'package:whats_app_de_berga/widgets/chatScreean.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {

  Column list(BuildContext context, int i) {
    return Column(
      children: <Widget>[
        Divider(
          height: 10.0,
        ),
        new ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => ChatScreean(messageData[i])),
            );
          },
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
            Text(messageData[i].name,
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text(messageData[i].time,
                style: TextStyle(color: Colors.grey, fontSize: 14.0))
          ]),
          subtitle: Container(
            child: Text(
              messageData[i].message,
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
          ),
          leading: new CircleAvatar(
              backgroundImage: NetworkImage(URL)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, i) => list(context, i));
  }
}
