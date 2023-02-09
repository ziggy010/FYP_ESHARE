import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPasswordField extends StatefulWidget {
  final TextInputType? keyboardType;
  Function(String) onSaved;
  final String? hintText;
  final String? labelText;
  final TextEditingController textEditingController;

  MyPasswordField({
    required this.keyboardType,
    required this.onSaved,
    required this.hintText,
    required this.labelText,
    required this.textEditingController,
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
      controller: widget.textEditingController,
      keyboardType: widget.keyboardType,
      keyboardAppearance: Brightness.dark,
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
        fillColor: kContainerColor,
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
          borderSide: const BorderSide(
            color: kContainerColor,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kSelectedColor,
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
