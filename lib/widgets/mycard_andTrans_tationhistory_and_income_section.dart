import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/mycard_and_transtation_history_section.dart';

class MyCardAndTranstationHistoryAndIncomeSection extends StatelessWidget {
  const MyCardAndTranstationHistoryAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardAndTranstationHistorySection(),
        SizedBox(
          height: 10,
        ),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
