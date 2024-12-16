import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board_app/widgets/custom_drawer.dart';
import 'package:responsive_dash_board_app/widgets/income_section.dart';
import 'package:responsive_dash_board_app/widgets/my_card_and_transaction_history_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensessAndQuickInvoiceSection(),
                SizedBox(
                  height: 24,
                ),
                MyCardAndTransactionHistorySection(),
                SizedBox(
                  height: 24,
                ),
                IncomeSection(),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
