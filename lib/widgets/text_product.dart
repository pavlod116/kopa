import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_strings.dart';
import 'package:kopa_shop/core/widgets/base_stateless_widget.dart';

class TextProduct extends BaseStatelessWidget {
  const TextProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 31, bottom: 17, top: 14),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 97,
          minHeight: 18,
        ),
        child: const Text(
          AppStrings.addphoto,
          style: TextStyle(color: AppColors.white, fontSize: 16),
        ),
      ),
    );
  }
}
