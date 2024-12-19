import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board_app/utils/app_images.dart';
import 'package:responsive_dash_board_app/widgets/all_expensess_item.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  final items = [
    const AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r"$20,129"),
    const AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r"$20,129"),
    const AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r"$20,129"),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 0;
              });
            },
            child: AllExpensessItem(
              isSelected: currentIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 14,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            child: AllExpensessItem(
              isSelected: currentIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 14,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 2;
              });
            },
            child: AllExpensessItem(
              isSelected: currentIndex == 2,
              itemModel: items[2],
            ),
          ),
        ),
      ],
    );

    return Row(
      // children: items.map((e) => AllExpensessItem(itemModel: e)).toList(),// if i use this way i'll have issue in padding between items
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: index == 1
                        ? 12
                        : 0), //here i  checked before set padding
                child: AllExpensessItem(
                  isSelected: currentIndex == index,
                  itemModel: item,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
