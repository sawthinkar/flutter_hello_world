// <https://mhatsu.to/dark-theme-in-flutter/>
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dark Theme Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.black87,
      ),
      home: AppDesign(),
    );
  }
}

class AppDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AppBar Title')),
      body: Center(
        child: Text('This is Theming Sample.'),
      ),
    );
  }
}
