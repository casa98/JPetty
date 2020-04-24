import 'package:flutter/material.dart';
import 'package:jpetty/screens/authenticate/authenticate.dart';
import 'package:jpetty/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser>(context);
    print(user);
    if(user == null){
      return Authenticate();
    }
    else{
      return Home();
    }
  }
}