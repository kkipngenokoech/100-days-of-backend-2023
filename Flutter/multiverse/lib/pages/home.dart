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
      body: Center(
        child: Text('Multiverse '),
      ),
      );
  }
}
