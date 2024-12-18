import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';
import 'package:responsive_dash_board_app/widgets/range_options.dart';

class CustomSectionHeader extends StatelessWidget {
  const CustomSectionHeader({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppStyle.styleSemiBold20(context),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const RangeOptions(),
      ],
    );
  }
}
