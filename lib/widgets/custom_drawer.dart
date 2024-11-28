import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/drawer_item_model.dart';
import 'package:responsive_dash_board_app/utils/app_images.dart';
import 'package:responsive_dash_board_app/widgets/active_and_inactive_item.dart';

import 'package:responsive_dash_board_app/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board_app/widgets/usr_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UsrInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Mohamed Hussien',
              subTitle: "mohamed@gmail.com",
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveItem(
                  drawerItemModel: DrawerItemModel(
                    title: "Setting system",
                    image: Assets.imagesSettings,
                  ),
                ),
                InActiveItem(
                  drawerItemModel: DrawerItemModel(
                    title: "Logout account",
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
