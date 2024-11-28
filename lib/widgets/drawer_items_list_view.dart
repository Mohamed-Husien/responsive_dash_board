import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/drawer_item_model.dart';
import 'package:responsive_dash_board_app/utils/app_images.dart';
import 'package:responsive_dash_board_app/widgets/drawer_item.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({
    super.key,
  });
  static const List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: "My Transaction"),
    DrawerItemModel(image: Assets.imagesStatistics, title: "Statistics"),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: "Wallet Account"),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: "My Investments"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItemModel: items[index],
            activeItem: true,
          ),
        );
      },
    );
  }
}
