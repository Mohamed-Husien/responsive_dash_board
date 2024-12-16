import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board_app/widgets/income_section.dart';
import 'package:responsive_dash_board_app/widgets/my_card_and_transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
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
    );
  }
}
