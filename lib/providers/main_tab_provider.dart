import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/ui/main_tabs/follower/follower.dart';
import 'package:kopa_shop/ui/main_tabs/home/home_screen.dart';
import 'package:kopa_shop/ui/main_tabs/shoes/shoes.dart';
import 'package:kopa_shop/ui/setting_screen/setting_page.dart';

class MainTabViewModel with ChangeNotifier {
  int _childIndex = 0;

  int get childIndex => _childIndex;

  final List<Widget> children = <Widget>[
    const Home(),
    const Shoes(),
    const Follower(),
    const Setting(),
  ];

  final iconList = <String>[
    AppImages.house,
    AppImages.history,
    AppImages.favorite,
    AppImages.settings,
  ];

  void setChildIndex(int tabIndex) {
    _childIndex = tabIndex;
    notifyListeners();
  }

  Widget getTab() => children[childIndex];
}
