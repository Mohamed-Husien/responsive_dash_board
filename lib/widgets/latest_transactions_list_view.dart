import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/user_info_mnodel.dart';
import 'package:responsive_dash_board_app/utils/app_images.dart';
import 'package:responsive_dash_board_app/widgets/usr_info_list_tile.dart';

class LatestTransactionsListView extends StatelessWidget {
  const LatestTransactionsListView({super.key});
  static const items = [
    UserInfoMnodel(
        image: Assets.imagesAvatar1,
        title: "Mohamed Hussien",
        subTitle: "mohamed@gmail.com"),
    UserInfoMnodel(
        image: Assets.imagesAvatar2,
        title: "Mohamed Hussien",
        subTitle: "mohamed@gmail.com"),
    UserInfoMnodel(
        image: Assets.imagesAvatar3,
        title: "Mohamed Hussien",
        subTitle: "mohamed@gmail.com"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return UsrInfoListTile(
            userInfoMnodel: items[index],
          );
        });
  }
}
