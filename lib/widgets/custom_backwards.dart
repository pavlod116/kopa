import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/core/ui/widgets/base_stateful_widget.dart';
import 'package:kopa_shop/ui/home/home_screen.dart';

class Backwards extends BaseStatefulWidget {
  const Backwards({Key? key}) : super(key: key);

  @override
  State<Backwards> createState() => _BackwardsState();
}

class _BackwardsState extends State<Backwards> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 7,
          minHeight: 14,
        ),
        child: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
            icon: Image.asset(AppImages.backwards)));
  }
}
