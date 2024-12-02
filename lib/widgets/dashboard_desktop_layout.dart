import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/all_expensess.dart';
import 'package:responsive_dash_board_app/widgets/custom_drawer.dart';
import 'package:responsive_dash_board_app/widgets/quick_invoice.dart';

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
          child: SingleChildScrollView(
            // Added this
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AllExpensessWidget(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
