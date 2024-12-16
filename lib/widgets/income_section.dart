import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/custom_background_container.dart';
import 'package:responsive_dash_board_app/widgets/custom_section_header.dart';
import 'package:responsive_dash_board_app/widgets/income_chart.dart';
import 'package:responsive_dash_board_app/widgets/income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContaniner(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.start, // Align children at the start
        children: [
          CustomSectionHeader(
            text: "Income",
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: AspectRatio(aspectRatio: 1, child: IncomeChart()),
              ),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
