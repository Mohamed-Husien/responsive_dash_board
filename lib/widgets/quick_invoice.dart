import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/custom_background_container.dart';
import 'package:responsive_dash_board_app/widgets/latest_transactions.dart';
import 'package:responsive_dash_board_app/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board_app/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContaniner(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransactions(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}
