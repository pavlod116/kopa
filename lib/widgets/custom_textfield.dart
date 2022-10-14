import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      style: TextStyle(color: AppColors.white),
      decoration: InputDecoration(
        hintStyle: TextStyle(color: AppColors.white),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.border)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.white)),
        focusColor: AppColors.white,
        labelStyle: TextStyle(
          color: AppColors.white,
        ),
      ),
      cursorColor: AppColors.textPrimary,
    );
  }
}
