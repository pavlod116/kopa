import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/widgets/custom_textformfield.dart';

import '../../constants/app_images.dart';
import '../../constants/style.dart';
import 'sign_app.dart';

class Replenishment extends StatefulWidget {
  const Replenishment({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(bottom: 15, left: 25, right: 25),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                 child:  CustomTextFormField(labelText: '+ 380', validator: (value){
                   if(value == null || value.isEmpty){
                     return 'Будь ласка, введіть номер';
                   }
                   return null;
                 }
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginInOne()));
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.buttonin),
                  child: Center(
                    child: Text(
                      'Верифікувати ',
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
        ));
  }
}
