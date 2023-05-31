import 'package:flutter/material.dart';

const networkUrl =
    "https://upload.wikimedia.org/wikipedia/en/8/83/The_Penguins_of_Madagascar_logo.png";

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text("Multiverse"),
              RowImageWidget(),
              Divider(),
              BoxShadowWidget(),
              Divider(),
              TextFieldWidget(),
              Divider(),
              TextFormWidget()
            ],
          ),
        ),
      ),
    ));
  }
}

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Enter your multiverse code',
        border: UnderlineInputBorder(),
        labelStyle: TextStyle(color: Colors.purple),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      style: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 16.0
      ),
      decoration: const InputDecoration(
        labelText: "multiverse",
        labelStyle: TextStyle(color: Colors.purple),
        border: OutlineInputBorder()
      ),

    );
  }
}

class BoxShadowWidget extends StatelessWidget {
  const BoxShadowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.orange,
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 10.0, offset: Offset(0.0, 10.0))
          ]),
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
        Image.network(networkUrl, width: MediaQuery.of(context).size.width / 3),
        const Icon(
          Icons.brush,
          color: Colors.lightBlue,
          size: 48.0,
        ),
      ],
    );
  }
}
