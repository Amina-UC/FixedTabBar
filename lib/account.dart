import 'package:flutter/material.dart';

import 'account2.dart';

class Account extends StatefulWidget {
  final BuildContext menuScreenContext;
  Account({Key key, this.menuScreenContext}) : super(key: key);
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accounttt"),
      ),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("accountttttttt"),
          SizedBox(height: 50,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>Account22()
            ));
          },
            child: Text("Account Tap me"),
          )
        ],
      )),
    );
  }
}
