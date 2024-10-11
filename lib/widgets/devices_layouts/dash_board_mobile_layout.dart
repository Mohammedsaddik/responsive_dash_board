import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/allexpenses_and_quickInvoice_section.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/mycard_and_transtation_history_section.dart';

class DashBoardMobileLayOut extends StatelessWidget {
  const DashBoardMobileLayOut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24.0,
          ),
          MyCardAndTranstationHistorySection(),
          SizedBox(
            height: 24.0,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
