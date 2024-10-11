import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class CustomElevatedBotton extends StatelessWidget {
  const CustomElevatedBotton(
      {super.key, this.backgroundColor, this.textcolor, required this.text});
  final Color? backgroundColor, textcolor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your onPressed logic here
      },
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        padding: const EdgeInsets.all(20), // Padding inside the button
        backgroundColor:
            backgroundColor ?? const Color(0xFF4DB7F2), // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        minimumSize: const Size(266, 62), // Width and height of the button
      ),
      child: Text(
        text,
        style: AppStyles.styleSemiBold18(context).copyWith(
          color: textcolor,
        ),
      ),
    );
  }
}
