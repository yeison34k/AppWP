import 'package:flutter/material.dart';
import 'package:whats_app_de_berga/resources/cameraController.dart';
import 'package:whats_app_de_berga/widgets/contactList.dart';
import 'package:whats_app_de_berga/widgets/status.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Wp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.photo_camera)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ]),
          ),
          body: TabBarView(
            children: [
              Container(child: Camera()),
              Container(child: ContactList()),
              Container(child: Status()),
              Container(child: Icon(Icons.call)),
            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
