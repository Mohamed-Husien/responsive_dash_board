import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board_app/utils/app_images.dart';
import 'package:responsive_dash_board_app/widgets/all_expensess_header.dart';
import 'package:responsive_dash_board_app/widgets/all_expensess_item.dart';

class AllExpensessWidget extends StatelessWidget {
  const AllExpensessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: AllExpensessItem(
                      itemModel: AllExpensessItemModel(
                          image: Assets.imagesIncome,
                          title: 'Income',
                          date: 'April 2022',
                          price: r"$20,129"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: AllExpensessItem(
                      itemModel: AllExpensessItemModel(
                          image: Assets.imagesIncome,
                          title: 'Income',
                          date: 'April 2022',
                          price: r"$20,129"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: AllExpensessItem(
                      itemModel: AllExpensessItemModel(
                          image: Assets.imagesIncome,
                          title: 'Income',
                          date: 'April 2022',
                          price: r"$20,129"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
