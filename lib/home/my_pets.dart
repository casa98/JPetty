import 'package:flutter/material.dart';
import 'package:jpetty/home/drawer.dart';

class MyPets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Mascotas'),
        backgroundColor: Colors.deepPurple
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text("Mis Mascotas"),
      ),
    );
  }

}