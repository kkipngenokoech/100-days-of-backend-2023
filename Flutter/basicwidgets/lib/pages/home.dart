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
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text("Hello Multiverse"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_box_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.workspace_premium_outlined),
            onPressed: () {},
          )
        ],
        flexibleSpace:const SafeArea(
          child: Icon(
            Icons.photo_camera,
            size: 75.0,
            color: Colors.black,
          )
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(75.0),
          child: Container(
            color: Colors.lightGreen.shade100,
            height: 75.0,
            width: double.infinity,
            child:const Center(
              child: Text(
                "Bottom"
              )
            ),
          )
        ),
      ),
      body:const Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                 ContainerWithBoxDecoratorWidget(),
              ],
            ),
          )
        )
      ),
    );
  }
}


class ContainerWithBoxDecoratorWidget extends StatelessWidget {
  const ContainerWithBoxDecoratorWidget ({
   super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(100.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.lightGreen.shade500,
              ]
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0)
              ),
            ],
          ),
          child: const Center(
            child: Text("multiverse"),
          ),
        ),
      ],
    );
  }
}

