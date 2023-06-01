import 'package:animations/widgets/animated_container.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.add_card),
      ),
      body: const SafeArea(
        child: Column(
          children: <Widget>[AnimatedContainerWidget()],
        ),
      ),
    );
  }
}
