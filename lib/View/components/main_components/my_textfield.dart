import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextfield extends StatelessWidget {
  final TextInputType? keyboardType;
  Function(String) onSaved;
  final bool ObscureText;
  final Icon? icon;
  final String? hintText;
  final String? labelText;

  MyTextfield({
    required this.keyboardType,
    required this.onSaved,
    required this.ObscureText,
    this.icon,
    required this.hintText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      onChanged: onSaved,
      autocorrect: false,
      enableSuggestions: false,
      obscureText: ObscureText,
      cursorColor: Colors.grey.shade400,
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'poppins',
      ),
      decoration: InputDecoration(
        fillColor: Color(0xFF4A4C5B),
        filled: true,
        suffixIcon: icon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF4A4C5B)),
          borderRadius: BorderRadius.circular(15.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            // color: Color.fromARGB(255, 120, 124, 150),
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade600,
        ),
        floatingLabelStyle: TextStyle(color: Colors.grey.shade400),
        labelStyle: TextStyle(color: Colors.grey.shade500),
        labelText: labelText,
      ),
    );
  }
}
