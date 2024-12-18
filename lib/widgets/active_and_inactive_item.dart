import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board_app/models/drawer_item_model.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyle.styleRegular16(context),
      ),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          drawerItemModel.title,
          style: AppStyle.styleBold16(context),
        ),
      ),
      trailing: Container(
        color: const Color(0xff4EB7F2),
        width: 3.75,
      ),
    );
  }
}
