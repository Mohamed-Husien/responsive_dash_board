import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/transaction_model.dart';
import 'package:responsive_dash_board_app/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
        title: "Cash Withdrawal",
        subTitle: "13 Apr, 2022 ",
        amount: r"$20,129",
        isWithDrawal: true),
    TransactionModel(
        title: "Landing Page project",
        subTitle: "13 Apr, 2022 ",
        amount: r"$20,129",
        isWithDrawal: false),
    TransactionModel(
        title: "Juni Mobile App project",
        subTitle: "13 Apr, 2022 ",
        amount: r"$20,129",
        isWithDrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TransactionItem(transactionModel: items[index]);
        });
  }
}
