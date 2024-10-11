import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 20), // Padding inside the TextField
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xFFAAAAAA),
        ),
        filled: true,
        fillColor: const Color(0xFFFAFAFA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFFAFAFA))),
      ),
      style: const TextStyle(
        fontSize: 16,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

