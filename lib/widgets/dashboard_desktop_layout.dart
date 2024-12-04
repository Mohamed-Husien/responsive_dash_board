import 'package:flutter/material.dart';

import 'package:responsive_dash_board_app/widgets/custom_drawer.dart';
import 'package:responsive_dash_board_app/widgets/my_card.dart';

import 'all_expensess_and_quick_invoice_section.dart';

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
          child: AllExpensessAndQuickInvoiceSection(),
        ),
        Expanded(
          child: MyCard(),
        ),
      ],
    );
  }
}
