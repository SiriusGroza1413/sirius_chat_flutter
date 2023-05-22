import 'package:flutter/material.dart';
import '../Widgets/app_button.dart';
import '../Widgets/app_icon.dart';
import '../Widgets/app_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../services/authentication.dart';


class RegistrationScreen extends StatefulWidget {
 static const String routeName = '/registration';
  _RegistrationScreenState createState() => _RegistrationScreenState();
}


class _RegistrationScreenState extends State<RegistrationScreen> {
  late String _email;
  late String _password;

  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         padding: EdgeInsets.symmetric(horizontal: 70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppIcon(),
             SizedBox(height: 20.0),
            AppTextfield(
              inputText: 'Ingresar email',
              onChanged: (value) {_email = value;},
              ),
             SizedBox(height: 15.0),
            AppTextfield(
              inputText: 'Ingresar contraseña',
              onChanged: (value) {_password = value;},
              obscureText: true,
              ),
             SizedBox(height: 20.0),
            AppButton(
              color: Colors.purpleAccent,
              onPressed: () async {
                var newUser = await Authentication().createUser(email: _email, password: _password);
                if(newUser != null){
                  Navigator.pushNamed(context, '/chat');
                } 
              },
              name: 'Registrarse',
            )
          ],
        ),
      ),
    );
  }
}