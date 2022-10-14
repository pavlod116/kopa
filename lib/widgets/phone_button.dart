import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/core/widgets/base_stateful_widget.dart';

class PhoneButton extends BaseStatefulWidget {
  const PhoneButton({Key? key}) : super(key: key);

  @override
  State<PhoneButton> createState() => _PhoneButtonState();
}

class _PhoneButtonState extends State<PhoneButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 38),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 65,
          minHeight: 65,
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              backgroundColor: AppColors.sellerph,
              shape: const CircleBorder(),
            ),
            child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 28,
                  minHeight: 28,
                ),
                child: Image.asset(
                  AppImages.phone,
                  color: AppColors.black,
                )),
            // ignore: avoid_returning_null_for_void
            onPressed: () => null),
      ),
    );
  }
}
