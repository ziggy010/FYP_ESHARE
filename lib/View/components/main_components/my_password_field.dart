import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPasswordField extends StatefulWidget {
  final TextInputType? keyboardType;
  Function(String) onSaved;
  final String? hintText;
  final String? labelText;

  MyPasswordField({
    required this.keyboardType,
    required this.onSaved,
    required this.hintText,
    required this.labelText,
  });

  @override
  State<MyPasswordField> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool isClicked = false;
  bool obscure = true;
  IconData finalIcon = Icons.visibility_outlined;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType,
      onChanged: widget.onSaved,
      autocorrect: false,
      enableSuggestions: false,
      obscureText: obscure,
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
          child: GestureDetector(
            onTap: () {
              setState(() {
                isClicked = !isClicked;
                obscure = isClicked ? false : true;
                finalIcon = isClicked
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined;
              });
            },
            child: Icon(
              finalIcon,
              color: Colors.white,
            ),
          ),
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
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade600,
        ),
        floatingLabelStyle: TextStyle(color: Colors.grey.shade400),
        labelStyle: TextStyle(color: Colors.grey.shade500),
        labelText: widget.labelText,
      ),
    );
  }
}
