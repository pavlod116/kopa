import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/core/widgets/base_stateful_widget.dart';

class AddItemWidget extends BaseStatefulWidget {
  const AddItemWidget({Key? key}) : super(key: key);

  @override
  State<AddItemWidget> createState() => _AddItemWidgetState();
}

class _AddItemWidgetState extends State<AddItemWidget> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 375, minHeight: 200,),
      child: Container(
        color: AppColors.card,
        child: Padding(
          padding: const EdgeInsets.only(
              left: 8, top: 18, right: 8, bottom: 14),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.focus,
                        image:  const DecorationImage(
                          image: AssetImage(AppImages.group),
                          alignment: Alignment.center,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    width: 78,
                    height: 77,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.container,
                        borderRadius: BorderRadius.circular(8)),
                    width: 78,
                    height: 77,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.container,
                        borderRadius: BorderRadius.circular(8)),
                    width: 78,
                    height: 77,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.container,
                        borderRadius: BorderRadius.circular(8)),
                    width: 78,
                    height: 77,
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 13),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.container,
                          borderRadius: BorderRadius.circular(8)),
                      width: 78,
                      height: 77,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.container,
                          borderRadius: BorderRadius.circular(8)),
                      width: 78,
                      height: 77,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.container,
                          borderRadius: BorderRadius.circular(8)),
                      width: 78,
                      height: 77,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.container,
                          borderRadius: BorderRadius.circular(8)),
                      width: 78,
                      height: 77,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
