import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/constants/app_strings.dart';
import 'package:kopa_shop/constants/style.dart';
import 'package:kopa_shop/core/ui/widgets/base_stateful_widget.dart';
import 'package:kopa_shop/services/auth/auth.dart';
import 'package:kopa_shop/ui/login_screen/login_screen.dart';
import 'package:provider/provider.dart';

class Setting extends BaseStatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 61, left:31),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 91,
                      minHeight: 91,
                    ),
                    child: Image.asset(
                      AppImages.user,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 65, left: 20),
                  child: Text(
                    'Angela Mayer',
                    style: styleT(name, color: AppColors.white),
                  ),
                ),
              ],
            ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 35),
          child: TextField(
            style: TextStyle(
              color: AppColors.white,
            ),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.border)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.white)),
              labelText: 'Контактний номер',
              labelStyle: TextStyle(
                color: AppColors.white,
              ),
            ),
            cursorColor: AppColors.textPrimary,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 31),
          child: TextField(
            style: TextStyle(color: AppColors.white),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: AppColors.white),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.border)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.white)),
              focusColor: AppColors.white,
              labelText: 'Місто',
              labelStyle: TextStyle(
                color: AppColors.white,
              ),
            ),
            cursorColor: AppColors.textPrimary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
          child: GestureDetector(
            onTap: () {
              context.read<FirebaseAuthMethods>().signOut(context);
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 283,
                minHeight: 34
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.buttonin),
                child: Center(
                  child: Text(
                    AppStrings.exit,
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
        ),
      ],
    );
  }
}
