import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/custom_drower.dart';
import 'package:responsive_dash_board/widgets/devices_layouts/dash_board_desk_top_lay_out.dart';
import 'package:responsive_dash_board/widgets/devices_layouts/adaptive_lay_out.dart';
import 'package:responsive_dash_board/widgets/devices_layouts/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/devices_layouts/dash_board_tablet_layout.dart';

class DashBardView extends StatefulWidget {
  const DashBardView({super.key});

  @override
  State<DashBardView> createState() => _DashBardViewState();
}

class _DashBardViewState extends State<DashBardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _isPressed = false; // Track whether the icon is pressed

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0.0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: GestureDetector(
                onTap: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                onTapDown: (_) {
                  setState(() {
                    _isPressed = true; // Icon is pressed
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    _isPressed = false; // Icon is released
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.menu,
                    size: _isPressed ? 35.0 : 30.0, // Animate size change
                    color: _isPressed
                        ? Colors.blue
                        : Colors.black, // Change color to blue
                  ),
                ),
              ),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrower()
          : null,
      body: AdabtiveLayOut(
        mobileLayout: (context) => const DashBoardMobileLayOut(),
        tabletLayout: (context) => const DashBoardTabletLayOut(),
        desktopLayout: (context) => const DashBoardDesktopLayOut(),
      ),
    );
  }
}
