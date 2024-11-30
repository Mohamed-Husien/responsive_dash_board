import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';
import 'package:responsive_dash_board_app/widgets/all_expensess_item_header.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(image: itemModel.image),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyle.styleSemiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyle.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyle.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(image: itemModel.image),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyle.styleSemiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyle.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyle.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
