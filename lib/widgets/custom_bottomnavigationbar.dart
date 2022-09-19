import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';

class CustomBottomNavigatorBar extends StatefulWidget {
  const CustomBottomNavigatorBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigatorBar> createState() =>
      _CustomBottomNavigatorBarState();
}

class _CustomBottomNavigatorBarState extends State<CustomBottomNavigatorBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.navigatorbottom,
      selectedItemColor: AppColors.focus,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (index) {
        switch (index) {
          case 1:
            Navigator.pushNamed(context, "/archive");
            break;
          case 3:
            Navigator.pushNamed(context, "/favorite");
            break;
          case 4:
            Navigator.pushNamed(context, "/setting");
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ' '),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: ' '),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ' '),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: ' '),
      ],
    );
  }
}
