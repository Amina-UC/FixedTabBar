import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'MainPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persistent Bottom Navigation Bar example project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenu(),
      initialRoute: '/',
    );
  }
}

class MainMenu extends StatefulWidget {
  MainMenu({Key key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Project"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Custom widget example"),
            onPressed: () => Navigator.push(context, MaterialPageRoute(
                builder: (context)=>MainPage(menuScreenContext: context,)
            ))
        ),
      ),
    );
  }
}
