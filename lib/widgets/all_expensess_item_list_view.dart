import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board_app/utils/app_images.dart';
import 'package:responsive_dash_board_app/widgets/all_expensess_item.dart';

class AllExpensessItemListView extends StatelessWidget {
  const AllExpensessItemListView({super.key});
  static const items = [
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r"$20,129"),
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r"$20,129"),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r"$20,129"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: AllExpensessItem(itemModel: items[index]),
          );
        });
  }
}
