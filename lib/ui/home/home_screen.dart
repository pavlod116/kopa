import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/core/widgets/base_stateful_widget.dart';
import 'package:kopa_shop/ui/bottom_bar/bottom_notifier.dart';
import 'package:kopa_shop/ui/create_product_screen/create_product_page.dart';
import 'package:kopa_shop/ui/setting_screen/setting_page.dart';
import 'package:kopa_shop/widgets/custom_card.dart';
import 'package:provider/provider.dart';

class Home extends BaseStatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

@override
State<Home> createState() => _HomeState();

class _HomeState extends State<Home> {
  static final List<Widget> _children = <Widget>[
     const CustomCard(),
    const Center(child: Text('')),
    const CreateProductPage(),
    const Center(child: Text('fjf')),
    const Center(child: Setting()),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNotifier>(
      create: (_) => BottomNotifier(),
      builder: (context, child) {
        return Scaffold(
          backgroundColor: AppColors.backgroud,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.navigatorbottom,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            onTap: (int index) {
              Provider.of<BottomNotifier>(context, listen: false).childIndex =
                  index;
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home,
                    color: Provider.of<BottomNotifier>(context).childIndex == 0
                        ? AppColors.focus
                        : AppColors.unfocus),
                label: ' ',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list,
                      color:
                          Provider.of<BottomNotifier>(context).childIndex == 1
                              ? AppColors.focus
                              : AppColors.unfocus),
                  label: ' '),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add,
                      color:
                          Provider.of<BottomNotifier>(context).childIndex == 2
                              ? AppColors.focus
                              : AppColors.unfocus),
                  label: ' '),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite,
                      color:
                          Provider.of<BottomNotifier>(context).childIndex == 3
                              ? AppColors.focus
                              : AppColors.unfocus),
                  label: ' '),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings,
                      color:
                          Provider.of<BottomNotifier>(context).childIndex == 4
                              ? AppColors.focus
                              : AppColors.unfocus),
                  label: ' '),
            ],
          ),
          body: Stack(children: [
            Container(
                decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    AppImages.yellow,
                  ),
                ),
              ),
            ),
            _children[Provider.of<BottomNotifier>(context).childIndex],
          ]),
        );
      },
    );
  }
}
