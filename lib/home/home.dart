import 'package:flutter/material.dart';
import 'package:jpetty/home/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: Colors.deepPurple
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Inicio',),
      ),
    );
  }
}