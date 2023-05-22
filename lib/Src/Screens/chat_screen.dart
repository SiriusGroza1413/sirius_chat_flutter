import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../services/authentication.dart';

class ChatScreen extends StatefulWidget {
  static const String routeName = '/chat';

  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final auth = FirebaseAuth.instance;
  late User loggedInUser;

  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
      var user = Authentication().getCurrentUser();
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
        actions: [
          IconButton(
            onPressed: () {
              Authentication().signOut();
              Navigator.pushNamed(context, '');

            },
            icon: Icon(Icons.power_settings_new)
          )
        ],
      ),
    );
  }
}
