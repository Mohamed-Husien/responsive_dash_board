import 'package:flutter/material.dart';

import 'package:responsive_dash_board_app/widgets/custom_drawer.dart';
import 'package:responsive_dash_board_app/widgets/income_section.dart';
import 'package:responsive_dash_board_app/widgets/my_card_and_transaction_history_section.dart';

import 'all_expensess_and_quick_invoice_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 3,
          child: AllExpensessAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 2,
          child: IncomeSection(),
        ),
      ],
    );
  }
}
