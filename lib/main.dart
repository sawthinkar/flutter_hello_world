import 'package:flutter/material.dart';
import 'package:hello_world/myhomepage.dart';
import 'package:hello_world/wordgenerator.dart';
import 'package:hello_world/animatedppacity.dart';

void main() {
  runApp(MaterialApp(
    title: 'Home',
    theme: ThemeData(fontFamily: 'Arial Rounded Bold'),
    home: HelloWorld(),
  ));
}

class HelloWorld extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // iconTheme: IconThemeData(color: Colors.redAccent),
        title: Text(
            'Click Me for Increment Counter / \n Long Press Name Generator',
            style: TextStyle(fontFamily: 'Luminari')),
      ),
      body: Column(
        // child: Text('Hello World'),
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: Text('BUTTON'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ClickMe()),
              );
            },
            onLongPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LongPress()),
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogoFade()),
                );
              },
              child: Text('Fade Logo'))
        ],
      ),
    );
  }
}

class ClickMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ClickMe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Click Me brought me here'),
    );
  }
}

class LongPress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Long Press',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WordGenerator(),
    );
  }
}
