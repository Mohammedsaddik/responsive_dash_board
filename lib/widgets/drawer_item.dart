import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drower_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_drower_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0), // Start from left side
            end: Offset.zero, // End at the normal position
          ).animate(animation),
          child: FadeTransition(
            opacity: animation,
            child: ScaleTransition(
              scale: Tween<double>(begin: 0.8, end: 1.0).animate(animation),
              child: child,
            ),
          ),
        );
      },
      child: isActive
          ? ActiveDrowerItem(
              key: const ValueKey('active'), // Unique key for the active state
              drawerItemModel: drawerItemModel,
            )
          : inActiveDrowerItem(
              key: const ValueKey(
                  'inactive'), // Unique key for the inactive state
              drawerItemModel: drawerItemModel,
            ),
    );
  }
}
