import 'package:flutter/material.dart';
import 'package:hello_world/myhomepage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Home',
    home: HelloWorld(),
  ));
}

class HelloWorld extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Click for Blue / Long Press for Green'),
      ),
      body: Center(
        // child: Text('Hello World'),
        child: ElevatedButton(
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
      ),
    );
  }
}

class ClickMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: MyHomePage(title: 'Long Press brought me here'),
    );
  }
}
