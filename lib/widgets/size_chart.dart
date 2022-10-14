import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/core/widgets/base_stateful_widget.dart';

class SizeChart extends BaseStatefulWidget {
  const SizeChart({Key? key}) : super(key: key);

  @override
  State<SizeChart> createState() => _SizeChartState();
}

class _SizeChartState extends State<SizeChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.card,
      width: 375,
      height: 233,
      child: Row(
        children: [
          Stack(
            children: [
              Padding(
                padding:
                const EdgeInsets.only(left: 48, top: 22, bottom: 22),
                child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 66.81,
                      minHeight: 188.7,
                    ),
                    child: Image.asset(AppImages.shoes)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48, top: 65),
                child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 67,
                    ),
                    child: Image.asset(AppImages.left)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48, top: 65),
                child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 67,
                    ),
                    child: Image.asset(AppImages.right)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, bottom: 22),
                child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 189,
                    ),
                    child: Image.asset(AppImages.top)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 22),
                child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 189,
                    ),
                    child: Image.asset(AppImages.bottom)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 179, top: 100),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            'Довжина / см',
                            style:
                            TextStyle(color: AppColors.white, fontSize: 16),
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 16,
                          color: AppColors.unfocus,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            '39',
                            style:
                            TextStyle(color: AppColors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: Container(
                        width: 160,
                        height: 1,
                        color: AppColors.unfocus,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 179, top: 180),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            'Ширина /  см',
                            style:
                            TextStyle(color: AppColors.white, fontSize: 16),
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 16,
                          color: AppColors.unfocus,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            '39',
                            style:
                            TextStyle(color: AppColors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: Container(
                        width: 160,
                        height: 1,
                        color: AppColors.unfocus,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 179, top: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 29),
                          child: Text(
                            'Розмір',
                            style:
                            TextStyle(color: AppColors.white, fontSize: 16),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            '39',
                            style:
                            TextStyle(color: AppColors.white, fontSize: 16),
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 16,
                          color: AppColors.unfocus,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'EU',
                            style:
                            TextStyle(color: AppColors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: Container(
                        width: 160,
                        height: 1,
                        color: AppColors.unfocus,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
