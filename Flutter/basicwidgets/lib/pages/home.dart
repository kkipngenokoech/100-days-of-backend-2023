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
            child: ColumnWidget(),
          )
        )
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        backgroundColor: Colors.lightGreen.shade100,
        icon: Icon(Icons.play_arrow),
        label: Text("Play"),
        // child: const Icon(Icons.play_arrow),
      ),
      bottomNavigationBar:  const BottomAppBarWidget(),
    );
  }
}

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // shape: const CircularNotchedRectangle(),
      color: Colors.lightGreen.shade100,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(Icons.pause),
          Icon(Icons.stop),
          Icon(Icons.access_time),
          Padding(
            padding: EdgeInsets.all(32.0),
          ),
        ],
      ),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
         ContainerWithBoxDecoratorWidget(),
         Divider(),
         Text("column number 2 - multiverse"),
         Divider(),
         Text("column number 3 - multiverse"),
         RowWidget()
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
     crossAxisAlignment: CrossAxisAlignment.start,
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     mainAxisSize: MainAxisSize.max,
     children: <Widget>[
       Text("Multiverse row number 1"),
       Padding(padding: EdgeInsets.all(16.0),),
       Text("Multiverse row number 2"),
       Padding(padding: EdgeInsets.all(16.0),),
     ],
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

