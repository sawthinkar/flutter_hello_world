// https://api.flutter.dev/flutter/widgets/AnimatedOpacity-class.html

import 'package:flutter/material.dart';

class LogoFade extends StatefulWidget {
  @override
  createState() => LogoFadeState();
}

class LogoFadeState extends State<LogoFade> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: Duration(seconds: 1),
              child: FlutterLogo(),
            ),
            Text('Try the Animated Opacity.'),
            ElevatedButton(
              child: Text('Fade Logo'),
              onPressed: _changeOpacity,
            ),
          ],
        ),
      ),
    );
  }
}
