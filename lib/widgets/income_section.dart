import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/custom_section_header.dart';
import 'package:responsive_dash_board_app/widgets/custom_background_container.dart';
import 'package:responsive_dash_board_app/widgets/income_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContaniner(
        child: Column(
      children: [
        Expanded(
          child: CustomSectionHeader(
            text: "Income",
          ),
        ),
        Expanded(
          child: Row(
            children: [
              IncomeChart(),
            ],
          ),
        )
      ],
    ));
  }
}
