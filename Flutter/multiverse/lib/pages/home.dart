import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold (
      appBar: AppBar (
        title: Text('Multiverse Home Page'),
      ),
      body:const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("I am column inside a row "),
                    Text("I am another column inside a row"),
                  ],
                )
              ],
            )
          ),
          ),
      ),
      );
  }
}
