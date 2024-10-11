import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_listview.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LatestTransactionListView(),
      ],
    );
  }
}
