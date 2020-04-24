import 'package:flutter/material.dart';
import 'package:jpetty/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[400],
        elevation: 0.0,
        title: Text('Sign In'),
      ),
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: RaisedButton(
          onPressed: () async{
            dynamic result = await _auth.signInAnon();
            if(result == null){
              print('Error signing in');
            }else{
              print('Signed in');
              print(result.uid);
            }
          },
          child: Text('Sign in anonymously'),
        ),
      ),
    );
  }
}