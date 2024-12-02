import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board_app/models/user_info_mnodel.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';

class UsrInfoListTile extends StatelessWidget {
  const UsrInfoListTile({
    super.key,
    required this.userInfoMnodel,
  });
  final UserInfoMnodel userInfoMnodel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoMnodel.image),
          title: Text(
            userInfoMnodel.title,
            style: AppStyle.styleSemiBold16,
          ),
          subtitle: Text(
            userInfoMnodel.subTitle,
            style: AppStyle.styleRegular12,
          ),
        ),
      ),
    );
  }
}
