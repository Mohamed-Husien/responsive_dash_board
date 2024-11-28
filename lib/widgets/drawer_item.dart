import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/drawer_item_model.dart';
import 'package:responsive_dash_board_app/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.activeItem});
  final DrawerItemModel drawerItemModel;
  final bool activeItem;
  @override
  Widget build(BuildContext context) {
    return activeItem
        ? ActiveItem(drawerItemModel: drawerItemModel)
        : InActiveItem(drawerItemModel: drawerItemModel);
  }
}
