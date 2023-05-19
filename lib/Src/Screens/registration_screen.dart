import 'package:flutter/material.dart';

import '../Widgets/app_button.dart';
import '../Widgets/app_icon.dart';
import '../Widgets/app_textfield.dart';

class RegistrationScreen extends StatefulWidget {

 static const String routeName = '/registration';
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            AppTextfield(inputText: 'Ingresar email'),
            SizedBox(height: 15.0),
            AppTextfield(inputText: 'Ingresar contraseña'),
            SizedBox(height: 20.0),
            AppButton(
              color: Colors.purpleAccent,
              onPressed: () {},
              name: 'Registrarse',
            )
          ],
        ),
      ),
    );
  }
}