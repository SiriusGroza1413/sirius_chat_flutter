import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sirius_chat/Src/Screens/login_screen.dart';
import 'package:sirius_chat/Src/Screens/welcome_screen.dart';
import 'Src/Screens/chat_screen.dart';
import 'Src/Screens/registration_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        RegistrationScreen.routeName: (BuildContext context) => RegistrationScreen(),
        ChatScreen.routeName: (BuildContext context) => ChatScreen()
      },
    )
  );
}

