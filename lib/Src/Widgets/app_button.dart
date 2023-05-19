import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {

  final Color color;
  final VoidCallback onPressed;
  final String name;

  AppButton(
    { required this.color, 
      required this.onPressed, 
      required this.name
    });

  @override
  Widget build(BuildContext context){
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
            onPressed: onPressed,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white70
              ),
            ),
          )
        )
      ),
    );
  }
}