import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/utils/app_images.dart';
import 'package:responsive_dash_board_app/widgets/usr_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UsrInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Mohamed Hussien',
            subTitle: "mohamed@gmail.com",
          ),
        ],
      ),
    );
  }
}
