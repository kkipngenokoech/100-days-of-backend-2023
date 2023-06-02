import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double _opacity = 1.0;

  void _animatedOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.3 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          AnimatedOpacity(
            opacity: _opacity,
            duration: Duration(milliseconds: 500),
            child: ElevatedButton(
              child: Text("Tap to fade"),
              onPressed: (){
                _animatedOpacity();
              },
            )
          )
        ],
    );
  }
}
