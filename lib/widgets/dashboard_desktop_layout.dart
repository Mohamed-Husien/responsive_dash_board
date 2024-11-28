import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/all_expensess.dart';
import 'package:responsive_dash_board_app/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: AllExpensessWidget(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
