import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/all_expensess_header.dart';
import 'package:responsive_dash_board_app/widgets/all_expensess_item_list_view.dart';
import 'package:responsive_dash_board_app/widgets/custom_background_container.dart';

class AllExpensessWidget extends StatelessWidget {
  const AllExpensessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContaniner(
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 8,
          ),
          AllExpensessItemListView(),
        ],
      ),
    );
  }
}
