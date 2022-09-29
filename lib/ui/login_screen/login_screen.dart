import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/constants/app_strings.dart';
import 'package:kopa_shop/core/ui/widgets/base_stateful_widget.dart';
import 'package:kopa_shop/constants/style.dart';
import 'package:kopa_shop/services/auth/auth.dart';
import 'package:kopa_shop/ui/home/home_screen.dart';
import 'package:kopa_shop/ui/sing/data_replenishment.dart';
import 'package:provider/provider.dart';

class LoginScreen extends BaseStatefulWidget {
  const LoginScreen({super.key});

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
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset(
              AppImages.logo,
              fit: BoxFit.cover,
              width: 436,
              height: 373,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 41, left: 83, right: 77.52),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    AppImages.elips,
                    fit: BoxFit.fill,
                    width: 214.48,
                    height: 114.99,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Center(
                      child: Text(
                    AppStrings.btnIn,
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
                  left: 47,
                  top: 40,
                  bottom: 54,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15),
                    backgroundColor: AppColors.phone,
                  ),
                  child: Image.asset(AppImages.phone),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Replenishment())),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 43, top: 40, bottom: 54),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: AppColors.fasebook,
                      padding: const EdgeInsets.all(15),
                    ),
                    child: Image.asset(AppImages.facebook),
                    onPressed: () {}),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 43, top: 40, bottom: 54),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: AppColors.google,
                    padding: const EdgeInsets.all(15),
                  ),
                  child: Image.asset(AppImages.google),
                  onPressed: () {
                    context.read<FirebaseAuthMethods>().signInWithGoogle(context);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
