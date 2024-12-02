import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: const Color(0xFF4EB7F2),
        ),
        child: const Text(
          'Send Money',
          style: AppStyle.styleSemiBold18,
        ),
      ),
    );
  }
}
