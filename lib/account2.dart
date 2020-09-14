import 'package:flutter/material.dart';

import 'account33.dart';

class Account22 extends StatefulWidget {
  @override
  _Account22State createState() => _Account22State();
}

class _Account22State extends State<Account22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acc 22"),
      ),
      body: Center(child: Column(
        children: [
          Text("acc 22"),
          SizedBox(height: 50,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>Account33()
            ));
          },
            child: Text("accuuu 33"),
          )
        ],
      )),
    );
  }
}
