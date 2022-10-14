import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/constants/app_strings.dart';
import 'package:kopa_shop/core/widgets/base_stateless_widget.dart';
import 'package:kopa_shop/widgets/card_price.dart';
import 'package:kopa_shop/widgets/custom_backwards.dart';
import 'package:kopa_shop/widgets/phone_button.dart';

class CardPage extends BaseStatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 400),
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints(minWidth: 200, minHeight: 300),
                  child: Container(
                    color: AppColors.card,
                    child: Column(
                      children: <Widget>[
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 57, left: 16, right: 286),
                          child: CardPrice(),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 12, right: 240, top: 15),
                          child: Text(
                            AppStrings.nike,
                            style: TextStyle(
                              fontSize: 22,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 14, right: 270, top: 9),
                          child: Text(
                            AppStrings.foot,
                            style: TextStyle(
                              fontSize: 10,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 16, top: 9),
                              child: Text(
                                AppStrings.width,
                                style: TextStyle(
                                  fontSize: 22,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 26, top: 9),
                              child: Text(
                                AppStrings.length,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 42, top: 9),
                              child: Text(
                                AppStrings.size,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 22, top: 5),
                              child: Text(
                                AppStrings.eu,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12, top: 5),
                              child: Text(
                                AppStrings.lengthsm,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7, top: 5),
                              child: Text(
                                AppStrings.widthsm,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 11, right: 255, top: 16),
                          child: Text(
                            AppStrings.materialle,
                            style: TextStyle(
                              fontSize: 10,
                              color: AppColors.unfocus,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 17, top: 16),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 344,
                              minHeight: 80,
                            ),
                            child: const Text(
                              AppStrings.description,
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColors.unfocus,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 300,
                    minHeight: 400,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              AppImages.cross,
                            )),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Backwards(),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 16, bottom: 33),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 61,
                    minHeight: 61,
                  ),
                  child: Image.asset(
                    AppImages.worker,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13,
                    ),
                    child: Text(
                      AppStrings.seller,
                      style: TextStyle(
                        fontSize: 22,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      AppStrings.situ,
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const PhoneButton(),
            ],
          ),
        ],
      ),
    );
  }
}
