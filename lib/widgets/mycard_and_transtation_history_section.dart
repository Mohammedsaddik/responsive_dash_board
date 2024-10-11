import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/mycard_section.dart';

import 'transaction_history.dart';

class MyCardAndTranstationHistorySection extends StatelessWidget {
  const MyCardAndTranstationHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyCardSection(),
            Divider(
              height: 10.0,
              color: Color(0xffF1F1F1),
            ),
            TransactionHistory(),
          ],
        ),
      ),
    );
  }
}
