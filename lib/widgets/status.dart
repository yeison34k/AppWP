import 'package:flutter/material.dart';
import 'package:whats_app_de_berga/models/statusModel.dart';
import 'package:whats_app_de_berga/resources/constants.dart';

class Status extends StatefulWidget {
  final StatusModel status;

  Status({this.status});

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  Column list(context, i) {
    return Column(children: <Widget>[
      Divider(
        height: 10.0,
      ),
      new ListTile(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(statusList[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(statusList[i].time,
                  style: TextStyle(color: Colors.grey, fontSize: 14.0))
            ]),
        leading: new CircleAvatar(
            backgroundImage: NetworkImage(URL)),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: statusList.length,
        itemBuilder: (context, i) => list(context, i));
  }
}
