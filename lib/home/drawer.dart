import 'package:flutter/material.dart';
import 'package:jpetty/home/home.dart';
import 'package:jpetty/home/contact.dart';
import 'package:jpetty/home/my_pets.dart';
import 'package:jpetty/home/register_pets.dart';
import 'package:jpetty/home/settings.dart';
import 'package:jpetty/home/tyc.dart';
import 'package:jpetty/services/auth.dart';

class AppDrawer extends StatelessWidget {

  AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            //UserAccountsDrawerHeader(),
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => HomePage()
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ajustes'),
              onTap: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Settings()
                  )
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.pets),
              title: Text('Mis Mascotas'),
              onTap: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => MyPets()
                  )
                );
              },
            ),ListTile(
              leading: Icon(Icons.add),
              title: Text('Registrar Mascota'),
              onTap: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => RegisterPets()
                  )
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contacto'),
              onTap: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Contact()
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Términos y Condiciones'),
              onTap: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => TyC()
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text('Cerrar sesión'),
              //TODO Having bugs here.
              // When this is pressed, it's supposed to appear the Login page.
              // It just does nothing in the UI and you can keep navigating.
              // However, the user was actually sign out out in the backend. 
              onTap: () async{
                await _auth.signOut();
                return  null;
              },
            ),
          ],
        ),
      );
  }
}