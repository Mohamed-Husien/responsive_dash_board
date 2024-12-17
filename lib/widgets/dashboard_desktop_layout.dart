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
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensessAndQuickInvoiceSection(),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            MyCardAndTransactionHistorySection(),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: IncomeSection(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
