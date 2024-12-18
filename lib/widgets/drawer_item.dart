import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/drawer_item_model.dart';
import 'package:responsive_dash_board_app/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.activeItem,
  });

  final DrawerItemModel drawerItemModel;
  final bool activeItem;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      firstChild: InActiveItem(drawerItemModel: drawerItemModel),
      secondChild: ActiveItem(drawerItemModel: drawerItemModel),
      crossFadeState:
          activeItem ? CrossFadeState.showSecond : CrossFadeState.showFirst,
    );
  }
}
