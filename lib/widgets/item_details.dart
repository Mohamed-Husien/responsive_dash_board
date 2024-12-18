import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/item_details_model.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';

class ItemeDetails extends StatelessWidget {
  const ItemeDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyle.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyle.styleMedium16(context)
            .copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
