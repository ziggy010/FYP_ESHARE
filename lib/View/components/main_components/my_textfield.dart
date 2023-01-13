import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextfield extends StatelessWidget {
  final TextInputType? keyboardType;
  Function(String) onSaved;
  final Widget? icon;
  final String? hintText;
  final String? labelText;
  final double bottomPadding;

  MyTextfield({
    required this.keyboardType,
    required this.onSaved,
    this.icon,
    required this.hintText,
    required this.labelText,
    required this.bottomPadding,
  });

  @override
  Widget build(BuildContext context) {
    bool isClicked = false;
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding.h),
      child: TextField(
        keyboardType: keyboardType,
        onChanged: onSaved,
        autocorrect: false,
        enableSuggestions: false,
        cursorColor: Colors.grey.shade400,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'poppins',
        ),
        decoration: InputDecoration(
          fillColor: Color(0xFF4A4C5B),
          filled: true,
          suffixIcon: Padding(
            padding: EdgeInsets.only(
              right: 6.h,
            ),
            child: icon,
          ),
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
      ),
    );
  }
}
