import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
   static const String routeName = '';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  Widget getButton(Color color, String text, VoidCallback onPressed){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 11.0),
      child: Material(
        elevation: 15.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: color,
        child: SizedBox(
          height: 50.0,
          child: TextButton(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white70
              ),
            ),
            onPressed: onPressed
          )
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/icono.png'),
                Text(
                  'VS Chat App',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            getButton(
              Colors.purple.shade600,
              "Log In",
              () {Navigator.pushNamed(context, '/login');}
            ),
            getButton(
              Colors.indigoAccent.shade200, 
              'Sign Up',
              () {}
            ),
          ],
        ),
      )
    );
  }
}