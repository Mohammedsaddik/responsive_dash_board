import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/allexpenses_and_quickInvoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drower.dart';
import 'package:responsive_dash_board/widgets/mycard_andTrans_tationhistory_and_income_section.dart';

class DashBoardDesktopLayOut extends StatelessWidget {
  const DashBoardDesktopLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrower(),
        ),
        SizedBox(
          width: 32.0,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2, child: AllExpensesAndQuickInvoiceSection()),
                      Expanded(
                          child: MyCardAndTranstationHistoryAndIncomeSection())
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
