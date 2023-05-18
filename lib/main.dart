import 'package:flutter/material.dart';
import 'package:sirius_chat/Src/Screens/login_screen.dart';
import 'package:sirius_chat/Src/Screens/welcome_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.black45
          )
        )
      ),
      initialRoute: WelcomeScreen.routeName,
      routes: <String, WidgetBuilder>{
        LoginScreen.routeName: (BuildContext context) => LoginScreen(), 
        WelcomeScreen.routeName: (BuildContext context) => WelcomeScreen(),
      },
    )
  );
}

