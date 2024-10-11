import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'custom_textField.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.hint, required this.title});
  final String hint, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Customer name",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12.0,
        ),
        CustomTextField(
          hintText: hint,
        ),
      ],
    );
  }
}
