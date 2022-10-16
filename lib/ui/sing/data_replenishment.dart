import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_strings.dart';
import 'package:kopa_shop/core/widgets/base_stateful_widget.dart';
import 'package:kopa_shop/ui/main_tabs/home/home_screen.dart';
import 'package:kopa_shop/widgets/custom_textformfield.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/constants/style.dart';

class Replenishment extends BaseStatefulWidget {
  const Replenishment({super.key});

  @override
  State<Replenishment> createState() => _ReplenishmentState();
}

class _ReplenishmentState extends State<Replenishment> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Image.asset(
              AppImages.logo,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    AppImages.elips,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Center(
                    child: Text(
                      AppStrings.btnIn,
                      style: styleT(
                        fTiny,
                        color: AppColors.textPrimary,
                        fWeight: kLight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 25, right: 25),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: CustomTextFormField(
                  labelText: AppStrings.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.validatorph;
                    }
                    return null;
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 10,
            ),
            child: GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                }
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.buttonin),
                child: Center(
                  child: Text(
                    AppStrings.verify,
                    style: styleT(
                      fbuttonin,
                      color: AppColors.textPrimary,
                      fWeight: kLight,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
