import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:kopa_shop/core/widgets/base_stateless_widget.dart';


class CustomButton extends BaseStatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(top: 15),
      child: TextButton(
        onPressed: null,
        child: Text(AppStrings.save,
            style: TextStyle(fontSize: 13, color: AppColors.focus)),
      ),
    );
  }
}
