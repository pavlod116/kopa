import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/constants/app_strings.dart';
import 'package:kopa_shop/core/ui/widgets/base_stateful_widget.dart';
import 'package:kopa_shop/ui/card_screen/card_page.dart';
import 'package:kopa_shop/ui/edit_screen/edit_page.dart';

import 'card_price.dart';

class CustomCard extends BaseStatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const CardPage()));
      },
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 90,
              right: 280,
            ),
            child: EditPage(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 21,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 338,
                minHeight: 120,
              ),
              child: Card(
                elevation: 20,
                color: AppColors.card,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 170),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 208,
                              minHeight: 139
                            ),
                              child: Image.asset(
                                AppImages.cross,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                         Padding(
                          padding: const EdgeInsets.only(right: 11, top: 1),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 24.13,
                              minHeight: 22.2
                            ),
                            child: const IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                              onPressed: null,
                            ),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 260, top: 10),
                            child: CardPrice()),
                         Padding(
                          padding: const EdgeInsets.only(left: 151, top: 10),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 73.91,
                                minHeight: 18.4,
                            ),

                            child: const Text(
                              AppStrings.nike,
                              style: TextStyle(fontSize: 16, color:  AppColors.white),
                            ),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 151, top: 37),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 72,
                              minHeight: 11.5,
                            ),
                            child: const Text(
                              AppStrings.foot,
                              style: TextStyle(fontSize: 10, color:  AppColors.white),
                            ),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 151, top: 52),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 28,
                              minHeight: 25.3,
                            ),
                            child: const Text(
                              AppStrings.width,
                              style: TextStyle(fontSize: 22, color:  AppColors.white),
                            ),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 197, top: 57),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 46,
                              minHeight: 16,
                            ),
                            child: const Text(
                              AppStrings.length,
                              style: TextStyle(fontSize: 14, color:  AppColors.white),
                            ),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 180, top: 80),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 68,
                              minHeight: 16.1
                            ),
                            child: const Text(
                              AppStrings.lengthsm,
                              style: TextStyle(fontSize: 10, color: AppColors.white),
                            ),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 280, top: 57),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 28,
                              minHeight: 16.1
                            ),
                            child: const Text(
                              AppStrings.size,
                              style: TextStyle(fontSize: 14, color: AppColors.white),
                            ),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 253, top: 81),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 65,
                              minHeight: 11.5,
                            ),
                            child: const Text(
                              AppStrings.widthsm,
                              style: TextStyle(fontSize: 10, color: AppColors.white),
                            ),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 158, top: 82),
                          child: ConstrainedBox(
                             constraints: const BoxConstraints(
                               minWidth: 46,
                               minHeight: 11.5
                             ),
                              child: const Text(
                                AppStrings.eu,
                                style: TextStyle(fontSize: 10, color:  AppColors.white),
                              ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(left: 151, top: 103),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 139,
                              minHeight: 11.5
                            ),
                            child: const Text(
                              AppStrings.material,
                              style: TextStyle(fontSize: 10, color:  AppColors.white),
                            ),
                          ),
                        ),
                    ]),
                  ]),
              ),
            ),
              ),],
      ),
    );
  }
}
