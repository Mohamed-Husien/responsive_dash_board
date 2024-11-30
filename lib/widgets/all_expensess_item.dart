import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board_app/widgets/inactive_and_active_all_expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  final AllExpensessItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      firstChild: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: Colors.grey[300],
        child: InActiveAllExpensessItem(itemModel: itemModel),
      ),
      secondChild: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: Colors.blue[300],
        child: ActiveAllExpensessItem(itemModel: itemModel),
      ),
      crossFadeState:
          isSelected ? CrossFadeState.showSecond : CrossFadeState.showFirst,
    );
  }
}
