import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextfield extends StatelessWidget {
  final TextInputType? keyboardType;
  Function(String) onSaved;
  final Widget? icon;
  final String? hintText;
  final String? labelText;
  final double bottomPadding;
  final TextEditingController textEditingController;

  MyTextfield({
    required this.keyboardType,
    required this.onSaved,
    this.icon,
    required this.hintText,
    required this.labelText,
    required this.bottomPadding,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    bool isClicked = false;
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding.h),
      child: TextField(
        controller: textEditingController,
        keyboardType: keyboardType,
        keyboardAppearance: Brightness.dark,
        onChanged: onSaved,
        autocorrect: false,
        enableSuggestions: false,
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
            child: icon,
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
