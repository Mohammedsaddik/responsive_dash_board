import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_elevated_botton.dart';
import 'package:responsive_dash_board/widgets/title_textField.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hint: "Type customer name",
                title: "Customer name",
              ),
            ),
            SizedBox(
              width: 16.00,
            ),
            Expanded(
              child: TitleTextField(
                hint: "Type customer email",
                title: "Customer Email",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24.00,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hint: "Type customer name",
                title: "Item name",
              ),
            ),
            SizedBox(
              width: 16.00,
            ),
            Expanded(
              child: TitleTextField(
                hint: "USD",
                title: "Item mount",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24.00,
        ),
        Row(
          children: [
            Expanded(
              child: CustomElevatedBotton(
                text: "Add more details",
                textcolor: Color(0xFF4DB7F2),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(
              width: 24.00,
            ),
            Expanded(
              child: CustomElevatedBotton(
                text: "Send Money",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
