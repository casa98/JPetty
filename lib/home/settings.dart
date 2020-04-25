import 'package:flutter/material.dart';
import 'package:jpetty/home/drawer.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajustes'),
        backgroundColor: Colors.deepPurple
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text("Ajustes"),
      ),
    );
  }

}