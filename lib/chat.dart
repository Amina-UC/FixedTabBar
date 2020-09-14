import 'package:flutter/material.dart';
import 'package:staticbottomtabbar/chat2.dart';

class Chat extends StatefulWidget {
  final BuildContext menuScreenContext;
  Chat({Key key, this.menuScreenContext}) : super(key: key);
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chatt"),
      ),
      body:  Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Chattttt"),
          SizedBox(height: 50,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=>Chatt22()
            ));
          },
            child: Text("Chat Tap me"),
          )
        ],
      )),
    );
  }
}
