import 'package:flutter/material.dart';
import 'package:jpetty/services/auth.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[400],
        title: Text('User logged in'),
        elevation: 0.0,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () async{
            await _auth.signOut();
          }, 
          child: Text('Log out'),
        ),
      ),
    );
  }
}