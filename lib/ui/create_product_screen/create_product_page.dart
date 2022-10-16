import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_strings.dart';
import 'package:kopa_shop/core/widgets/base_stateful_widget.dart';
import 'package:kopa_shop/widgets/add_item_widget.dart';
import 'package:kopa_shop/widgets/custom_backwards.dart';
import 'package:kopa_shop/widgets/custom_button.dart';
import 'package:kopa_shop/widgets/custom_textfield.dart';
import 'package:kopa_shop/widgets/size_chart.dart';
import 'package:kopa_shop/widgets/text_product.dart';

class CreateProductPage extends BaseStatefulWidget {
  const CreateProductPage({Key? key}) : super(key: key);

  @override
  State<CreateProductPage> createState() => _CreateProductPageState();
}

class _CreateProductPageState extends State<CreateProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: ListView(
        children: <Widget>[
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10, right: 210, top: 15),
                child: Backwards(),
              ),
              CustomButton(),
            ],
          ),
          const TextProduct(),
          const AddItemWidget(),
          Padding(
            padding: const EdgeInsets.only(left: 31,top: 17, bottom: 17),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 97,
                minHeight: 18,
              ),
              child: const Text(
                AppStrings.sizest,
                style: TextStyle(color: AppColors.white, fontSize: 16),
              ),
            ),
          ),
          const SizeChart(),
          Padding(
            padding: const EdgeInsets.only(left: 31, top: 17),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 97,
                minHeight: 18,
              ),
              child: const Text(
                AppStrings.model,
                style: TextStyle(color: AppColors.white, fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 38),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 1,
                minWidth: 98,
              ),
              child: const CustomTextField(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 31, top: 17),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 97,
                minHeight: 18,
              ),
              child: const Text(
                AppStrings.material,
                style: TextStyle(color: AppColors.white, fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 38),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 1,
                minWidth: 98,
              ),
              child: const CustomTextField(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 31, top: 17),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 97,
                minHeight: 18,
              ),
              child: const Text(
                AppStrings.opus,
                style: TextStyle(color: AppColors.white, fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 38, bottom: 19),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 1,
                minWidth: 98,
              ),
              child: const CustomTextField(),
            ),
          ),
          Container(
            width: 375,
            height: 84,
            color: AppColors.card,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 31, top: 12, right: 247),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 97,
                      minHeight: 18,
                    ),
                    child: const Text(
                      AppStrings.price,
                      style: TextStyle(color: AppColors.white, fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 4),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 1,
                      minWidth: 98,
                    ),
                    child: const CustomTextField(),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 14),
            child: Center(
                child: Text(
              AppStrings.photo,
              style: TextStyle(color: AppColors.text, fontSize: 11),
            )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 14, bottom: 14),
            child: Center(
                child: Text(
              AppStrings.correct,
              style: TextStyle(color: AppColors.text, fontSize: 11),
            )),
          ),
        ],
      ),
    );
  }
}
