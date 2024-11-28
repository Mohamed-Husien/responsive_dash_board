import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';

class UsrInfoListTile extends StatelessWidget {
  const UsrInfoListTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});
  final String title, subTitle, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: AppStyle.styleRegular12,
        ),
      ),
    );
  }
}
