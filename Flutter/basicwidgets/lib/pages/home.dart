import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("Hello Multiverse"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_box_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.workspace_premium_outlined),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
