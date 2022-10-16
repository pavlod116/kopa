import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/core/widgets/base_stateful_widget.dart';
import 'package:kopa_shop/providers/main_tab_provider.dart';
import 'package:kopa_shop/ui/create_product_screen/create_product_page.dart';
import 'package:provider/provider.dart';

class MainTab extends BaseStatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  State<MainTab> createState() => _HomePageState();
}

class _HomePageState extends State<MainTab>
    with SingleTickerProviderStateMixin {
  GlobalKey globalKey = GlobalKey();

  AnimationController? _animationController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController!,
      curve: const Interval(0.5, 1.0, curve: Curves.easeOut),
    );
    animation = Tween<double>(begin: 1, end: 0).animate(curve);
  }

  @override
  Widget build(BuildContext context) {
    bool showFab = MediaQuery.of(context).viewInsets.bottom != 0;
    return Consumer<MainTabViewModel>(builder: (context, mainVM, _) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.backgroud,
        floatingActionButton: Visibility(
          visible: !showFab,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: FloatingActionButton(
              elevation: 8,
              backgroundColor: AppColors.focus,
              child: Image.asset(AppImages.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateProductPage()),
                );
              },
            ),
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      AppImages.yellow,
                    ),
                    fit: BoxFit.cover)),
            child: mainVM.getTab()),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          elevation: 1,
          itemCount: mainVM.iconList.length,
          height: 56,
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? AppColors.focus : AppColors.unfocus;
            return Image.asset(mainVM.iconList[index], color: color);
          },
          hideAnimationController: _animationController,
          backgroundColor: AppColors.navigatorbottom,
          activeIndex: mainVM.childIndex,
          splashColor: Colors.grey[700],
          notchAndCornersAnimation: animation,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.defaultEdge,
          gapLocation: GapLocation.center,
          onTap: (index) => mainVM.setChildIndex(index),
        ),
      );
    });
  }
}
