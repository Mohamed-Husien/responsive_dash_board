import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';
import 'package:responsive_dash_board_app/widgets/dots_indicator.dart';
import 'package:responsive_dash_board_app/widgets/my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My card",
          style: AppStyle.styleSemiBold20,
        ),
        SizedBox(
          height: 20,
        ),
        MyCardPageView(),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(),
      ],
    );
  }
}
