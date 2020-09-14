import 'package:flutter/material.dart';
import 'package:staticbottomtabbar/home22.dart';

class Home extends StatefulWidget {
  final BuildContext menuScreenContext;
  Home({Key key, this.menuScreenContext}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homeee"),
      ),
      body:  Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hommeeee"),
          SizedBox(height: 50,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=>Home22()
            ));
          },
            child: Text("Home Tap me"),
          )
        ],
      )),
    );
  }
}
