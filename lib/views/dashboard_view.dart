import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board_app/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board_app/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board_app/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xffFAFAFA),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                ),
              ),
            )
          : null,
      backgroundColor: const Color(0XFFF7F9FE),
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
