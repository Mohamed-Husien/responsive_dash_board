import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/custom_background_container.dart';
import 'package:responsive_dash_board_app/widgets/my_card_section.dart';
import 'package:responsive_dash_board_app/widgets/transactions_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContaniner(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          color: Color(0xffF1F1F1),
          height: 40,
        ),
        TransactionsHistory(),
      ],
    ));
  }
}
