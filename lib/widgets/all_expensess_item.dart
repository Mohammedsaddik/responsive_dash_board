import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expensess_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_allexpensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key, required this.itemModell, required this.isSelected});
  final AllExpensessItemModel itemModell;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        // Define the transition animation (scale and fade in this case)
        return ScaleTransition(
          scale: animation,
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
      child: isSelected
          ? ActiveAllExpensessItem(
              key: const ValueKey('active'), // Add unique keys for the switch
              itemModell: itemModell,
            )
          : InActiveAllExpensessItem(
              key: const ValueKey('inactive'),
              itemModell: itemModell,
            ),
    );
  }
}
