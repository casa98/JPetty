import 'package:flutter/material.dart';
import 'package:jpetty/services/auth.dart';
import 'package:jpetty/shared/constants.dart';
import 'package:jpetty/shared/loading.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({ this.toggleView });

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  //final _formKey = GlobalKey<FormState>();
  bool loading = false;

  Color col = Colors.deepPurple[400];
  Color textColor = Colors.white;
  TextAlign textAlign = TextAlign.center;
  double letterSpacing = 1.0;

  String email = '';
  String passwd = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Container(
        padding: EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 0.0),
        child: Form(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Text(
                'JPetty',
                textAlign: textAlign,
                style: TextStyle(
                  color: Colors.deepPurple[800],
                  fontSize: 30.0,
                  letterSpacing: letterSpacing,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                error,
                style: TextStyle(
                  color: Colors.deepPurple[800],
                  letterSpacing: letterSpacing,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Crear cuenta',
                textAlign: textAlign,
                style: TextStyle(
                  color:  Colors.deepPurple[800],
                  fontSize: 20.0,
                  letterSpacing: letterSpacing,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration: textInputDecor.copyWith(hintText: 'Correo'),
                validator: (val) =>
                    val.isEmpty ? 'Debe ingresar un correo válido' : null,
                onChanged: (val) {
                  setState(() {
                    email = val;
                  });
                },
              ),
              SizedBox(
                height: 29.0,
              ),
              TextFormField(
                decoration:
                    textInputDecor.copyWith(hintText: 'Contraseña'),
                validator: (val) => val.length < 6
                    ? 'Ingrese 6 o más caracteres'
                    : null,
                obscureText: true,
                onChanged: (val) {
                  setState(() {
                    passwd = val;
                  });
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                elevation: 0.0,
                padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
                color: Colors.deepPurple[400],
                child: Text(
                  'REGISTRARSE',
                  style: TextStyle(
                    color: textColor,
                    letterSpacing: letterSpacing,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () async{
                  //if(_formKey.currentState.validate()){
                  setState(() => loading = true);
                  dynamic result = await _auth.registerWithEmailPasswd(email, passwd);
                  if(result == null){
                    setState(() {
                      loading = false;
                      error =
                      'Escribe un correo válido :)';
                      });
                  }
                  //}
                },
              ),
              SizedBox(height: 35.0,),
              Text(
                '¿Ya nos conocemos?',
                textAlign: textAlign,
                style: TextStyle(
                  color: Colors.deepPurple[900],
                  letterSpacing: letterSpacing,
                  fontSize: 17.0,
                ),
              ),
              FlatButton(
                textColor: Colors.deepPurple[900],
                child: Text(
                  'INICIAR SESIÓN',
                  style: TextStyle(
                    fontSize: 18,
                      letterSpacing: letterSpacing,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid
                  ),
                ),
                onPressed: () {
                  widget.toggleView();
                },
              ),
              SizedBox(height: 20.0,),
              Text(
                '¿Quieres ser paseador?',
                textAlign: textAlign,
                style: TextStyle(
                  color: Colors.deepPurple[900],
                  letterSpacing: letterSpacing,
                  fontSize: 17.0,
                ),
              ),
              FlatButton(
                textColor: Colors.deepPurple[900],
                child: Text(
                  'VER MÁS',
                  style: TextStyle(
                      fontSize: 18,
                      letterSpacing: letterSpacing,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid
                  ),
                ),
                onPressed: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}