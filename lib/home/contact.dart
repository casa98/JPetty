import 'package:flutter/material.dart';
import 'package:jpetty/home/drawer.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto'),
        backgroundColor: Colors.deepPurple
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text("Contacto"),
      ),
    );
  }
}