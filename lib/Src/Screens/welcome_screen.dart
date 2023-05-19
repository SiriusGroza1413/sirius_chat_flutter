import 'package:flutter/material.dart';
import 'package:sirius_chat/Src/Widgets/app_button.dart';

import '../Widgets/app_icon.dart';

class WelcomeScreen extends StatefulWidget {
   static const String routeName = '';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

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
            SizedBox(
              height: 40.0,
            ),
            AppButton(
              color:Colors.purple.shade600,
              onPressed: () {Navigator.pushNamed(context, '/login');},
              name: 'Log in',
            ),
            AppButton(
              color: Colors.indigoAccent.shade200,
              onPressed: () {},
              name: 'Sign up',
            )
          ],
        ),
      )
    );
  }
}