import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_de_berga/resources/cameraController.dart';
import 'package:whats_app_de_berga/widgets/contactList.dart';
import 'package:whats_app_de_berga/widgets/status.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<List<CameraDescription>> camera() async {
    final cameras = await availableCameras();
    return cameras;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page', firstCamera: camera()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.firstCamera}) : super(key: key);
  final String title;
  final firstCamera;

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
              Tab(text: "CHATS", icon: Icon(Icons.chat)),
              Tab(text: "STATUS", icon: Icon(Icons.autorenew)),
              Tab(text: "CALLS", icon: Icon(Icons.call)),
            ]),
          ),
          body: TabBarView(
            children: [
              Container(child: Camera(camera: widget.firstCamera.first)),
              Container(child: ContactList()),
              Container(child: Status()),
              Container(child: Icon(Icons.call)),
            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
