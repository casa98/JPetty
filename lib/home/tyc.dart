import 'package:flutter/material.dart';
import 'package:jpetty/home/drawer.dart';

class TyC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Términos y Condiciones'),
        backgroundColor: Colors.deepPurple
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text("Términos y Condiciones"),
      ),
    );
  }

}