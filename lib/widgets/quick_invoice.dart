import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/custom_background_container.dart';
import 'package:responsive_dash_board_app/widgets/custom_text_filed.dart';
import 'package:responsive_dash_board_app/widgets/latest_transactions.dart';
import 'package:responsive_dash_board_app/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board_app/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContaniner(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        LatestTransactions(),
        Divider(
          height: 48,
        ),
        TitleTextField(
          title: "Customer name",
          hint: "Type customer name",
        ),
      ],
    ));
  }
}
