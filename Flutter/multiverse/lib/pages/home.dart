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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                _buildRefactorRow()
              ],
            )
          ),
          ),
      ),
      );
  }

  Row _buildRefactorRow() {
    return Row(
                children: <Widget>[
                  Container(
                    color: Colors.yellow,
                    height: 40.0,
                    width: 40.0,
                  ),
                  const Padding(padding: EdgeInsets.all(16.0),),
                  const Text("I am another column inside a row"),
                  const Padding(padding: EdgeInsets.all(16.0),),
                  const _ExpandedWidget(),
                  const Padding(padding: EdgeInsets.all(16.0),),
                  Container(
                    color: Colors.brown,
                    height: 40.0,
                    width: 40.0,
                    ),
                ],
              );
  }
}

class _ExpandedWidget extends StatelessWidget {
  const _ExpandedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.amber,
        height: 40.0,
        width: 40.0,
      ),
    );
  }
}
