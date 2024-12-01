import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Latest Transaction",
          style: AppStyle.styleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
