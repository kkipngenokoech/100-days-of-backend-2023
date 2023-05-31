import 'package:flutter/material.dart';

const networkUrl = "https://upload.wikimedia.org/wikipedia/en/8/83/The_Penguins_of_Madagascar_logo.png";

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Text("Multiverse"),
                RowImageWidget()
              ],
            ),
          ),
        ),
      )
    );
  }
}

class RowImageWidget extends StatelessWidget {
  const RowImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const Image(
          image: AssetImage("assets/images/kiotalogo.jpg"),
          fit: BoxFit.cover,
          // width: MediaQuery.of(context).size.width,
        ),
        Image.network(
          networkUrl,
          width: MediaQuery.of(context).size.width / 3
        ),
        const Icon(
          Icons.brush,
          color: Colors.lightBlue,
          size: 48.0,
        ),
      ],
    );
  }
}
