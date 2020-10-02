import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hello/services/auth.dart';

class HomePage extends StatelessWidget {
  HomePage({@required this.auth, @required this.onSignOut});
  final VoidCallback onSignOut;
  final AuthBase auth;
  Future<void> _signOut() async {
    await auth.signOut();
    onSignOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'), actions: <Widget>[
        FlatButton(
          child: Text('Logout',
              style: TextStyle(fontSize: 18.0, color: Colors.white)),
          onPressed: _signOut,
        )
      ]),
    );
  }
}
