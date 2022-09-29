import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/constants/app_strings.dart';
import 'package:kopa_shop/core/ui/widgets/base_stateful_widget.dart';
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
    return Column(
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
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          AppImages.cross,
                          fit: BoxFit.cover,
                          width: 208,
                          height: 139,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 11, top: 1),
                      child: IconButton(
                        iconSize: 24.13,
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        onPressed: null,
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 260, top: 10),
                        child: CardPrice()),
                    const Padding(
                      padding: EdgeInsets.only(left: 151, top: 10),
                      child: SizedBox(
                        width: 73.91,
                        height: 18.4,
                        child: Text(
                          AppStrings.nike,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 151, top: 37),
                      child: SizedBox(
                        width: 72,
                        height: 11.5,
                        child: Text(
                          AppStrings.foot,
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 151, top: 52),
                      child: SizedBox(
                        width: 28,
                        height: 25.3,
                        child: Text(
                          AppStrings.width,
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 197, top: 57),
                      child: SizedBox(
                        width: 46,
                        height: 16,
                        child: Text(
                          AppStrings.length,
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 180, top: 80),
                      child: SizedBox(
                        width: 68,
                        height: 16.1,
                        child: Text(
                          AppStrings.lengthsm,
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 280, top: 57),
                      child: SizedBox(
                        width: 28,
                        height: 16.1,
                        child: Text(
                          AppStrings.size,
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 253, top: 81),
                      child: SizedBox(
                        width: 65,
                        height: 11.5,
                        child: Text(
                          AppStrings.widthsm,
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 158, top: 82),
                      child: SizedBox(
                        width: 46,
                        height: 11.5,
                        child: SizedBox(
                          width: 46,
                          height: 11.5,
                          child: Text(
                            AppStrings.eu,
                            style: TextStyle(fontSize: 10, color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 151, top: 103),
                      child: SizedBox(
                        width: 139,
                        height: 11.5,
                        child: Text(
                          AppStrings.material,
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
