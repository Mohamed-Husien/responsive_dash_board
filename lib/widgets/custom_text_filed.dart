import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        helperStyle: AppStyle.styleRegular16(context).copyWith(
          color: const Color(0xFFAAAAAA),
        ),
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        border: outlineBorder(),
        enabledBorder: outlineBorder(),
        focusedBorder: outlineBorder(),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFFAFAFA),
      ),
    );
  }
}
