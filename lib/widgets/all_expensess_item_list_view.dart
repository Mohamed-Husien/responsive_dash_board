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
    return Row(
      // children: items.map((e) => AllExpensessItem(itemModel: e)).toList(),// if i use this way i'll have issue in padding between items
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          return Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      index == 1 ? 12 : 0), //here i  checked before set padding
              child: AllExpensessItem(
                itemModel: item,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
