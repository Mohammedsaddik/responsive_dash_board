import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drower.dart';
import 'package:responsive_dash_board/widgets/devices_layouts/dash_board_mobile_layout.dart';

class DashBoardTabletLayOut extends StatelessWidget {
  const DashBoardTabletLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrower()),
        SizedBox(
          width: 32.0,
        ),
        Expanded(flex: 3, child: DashBoardMobileLayOut()),
      ],
    );
  }
}
