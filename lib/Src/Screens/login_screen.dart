import 'package:flutter/material.dart';
import 'package:sirius_chat/Src/Widgets/app_button.dart';
import 'package:sirius_chat/Src/Widgets/app_icon.dart';

import '../Widgets/app_textfield.dart';
import '../services/authentication.dart';


class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  late String _email;
  late String _password;

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
              onChanged: (value) { _email = value;},
            ),
            SizedBox(height: 15.0),
            AppTextfield(
              inputText: 'Ingresar contraseña',
              onChanged: (value) { _password = value;},
              obscureText: true,
              ),
            SizedBox(height: 20.0),
            AppButton(
              color: Colors.purpleAccent, 
              onPressed: () async {
                var user = await Authentication().loginUser(email: _email, password: _password);
                if(user != null){
                  Navigator.pushNamed(context,'/chat');
                } else {
                  return null;
                }
              }, 
              name: 'Enter',
            )
          ],
        ),
      )
    );
  }
}
