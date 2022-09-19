import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/widgets/custom_bottomnavigationbar.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/widgets/custom_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroud,
        bottomNavigationBar: const CustomBottomNavigatorBar(
        ),
        body: Stack(
          children: [
            Image.asset(AppImages.yellow),
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70, right: 250),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(AppImages.vector),
                  ),
                ),
                  const Padding(
                    padding:  EdgeInsets.only(top: 20, left: 25, right: 25),
                    child:  CustomCard(),
                  ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 25, right: 25),
                  child: CustomCard(),
                ),
               const Padding(
                  padding:  EdgeInsets.only(top: 20, left: 25, right: 25),
                  child: CustomCard()
                ),
                const Padding(
                  padding:  EdgeInsets.only(top: 20, left: 25, right: 25),
                  child: CustomCard()
                ),
                const Padding(
                  padding:  EdgeInsets.only(top: 20, left: 25, right: 25),
                  child: CustomCard()
                ),
                const Padding(
                  padding:  EdgeInsets.only(top: 20, left: 25, right: 25),
                  child: CustomCard()
                ),
                const Padding(
                  padding:  EdgeInsets.only(top: 20, left: 25, right: 25),
                  child: CustomCard()
                ),
                const Padding(
                  padding:  EdgeInsets.only(top: 20, left: 25, right: 25),
                  child: CustomCard()
                ),
                const Padding(
                  padding:  EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 25),
                  child: CustomCard()
                ),
              ],
            ),
          ],
        ));
  }
}
