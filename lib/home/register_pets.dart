import 'package:flutter/material.dart';
import 'package:jpetty/home/drawer.dart';

class RegisterPets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Mascota'),
        backgroundColor: Colors.deepPurple
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Registrar Mascota'),
      ),
    );
  }

}