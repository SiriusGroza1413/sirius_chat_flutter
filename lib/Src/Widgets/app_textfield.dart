import 'package:flutter/material.dart';

typedef ValueChange<T> = void Function(T);

class AppTextfield extends StatelessWidget {

  final String inputText;
  final ValueChange<String>? onChanged;
  final obscureText;

 

 const AppTextfield({required this.inputText, this.onChanged, this.obscureText});

  @override
  Widget build(BuildContext context){
    
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal:  10.0),
        hintText: inputText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: Color.fromARGB(115, 0, 0, 0)
          )
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: Colors.purpleAccent,
            width: 1.0,
          ) 
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 192, 0, 226),
            width: 2.0,
          )
        )
      ),
      onChanged: onChanged,
      textAlign: TextAlign.center,
      obscureText: obscureText == null ? false : obscureText
    );
  }
}
