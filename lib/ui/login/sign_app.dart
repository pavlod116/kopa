import 'package:flutter/material.dart';
import 'package:kopa_shop/ui/home/home_screen.dart';
import 'package:kopa_shop/widgets/custom_textformfield.dart';

import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/constants/style.dart';

class LoginInOne extends StatefulWidget {
  const LoginInOne({Key? key}) : super(key: key);

  @override
  State<LoginInOne> createState() => _LoginInOneState();
}

class _LoginInOneState extends State<LoginInOne> {
  final _formKeyOne = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: Form(
        key: _formKeyOne,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
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
                        'Вхід',
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
                padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
                child: CustomTextFormField(
                    labelText: "Ім'я",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Будь ласка, введіть ім'я";
                      }
                      return null;
                    })),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
              child: CustomTextFormField(
                  labelText: 'Прізвище',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Будь ласка, введіть прізвище";
                    }
                    return null;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
              child: CustomTextFormField(
                  labelText: 'Місто',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Будь ласка, введіть місто";
                    }
                    return null;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 200, bottom: 10),
              child: GestureDetector(
                onTap: () {
                  if (_formKeyOne.currentState!.validate()) {
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
                      'Готово ',
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
      ),
    );
  }
}
