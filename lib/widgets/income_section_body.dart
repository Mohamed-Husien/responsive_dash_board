import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/income_chart.dart';
import 'package:responsive_dash_board_app/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width >= 1200 && width >= 1755
        ? const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: AspectRatio(aspectRatio: 1, child: IncomeChart()),
              ),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          )
        : const SizedBox();
  }
}
