import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/ui/login/data_replenishment.dart';

import '../../constants/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  padding: const EdgeInsets.all(40.0),
                  child: Center(
                      child: Text(
                    'Вхід',
                    style: styleT(
                      fTiny,
                      color: AppColors.textPrimary,
                      fWeight: kLight,
                    ),
                  )),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 30,
                  bottom: 10,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15),
                    primary: AppColors.phone,
                  ),
                  child: Image.asset(AppImages.phone),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Replenishment())),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 30, bottom: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                      primary: AppColors.fasebook,
                    ),
                    child: Image.asset(AppImages.facebook),
                    onPressed: () {}),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 30, bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15),
                    primary: AppColors.google,
                  ),
                  child: Image.asset(AppImages.google),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
