import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/core/widgets/base_stateless_widget.dart';

class CardPrice extends BaseStatelessWidget {
  const CardPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 75,
        minHeight: 30,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cardprice,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            '100 \u0024',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
