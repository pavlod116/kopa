import 'package:flutter/material.dart';
import 'package:kopa_shop/core/widgets/base_stateful_widget.dart';
import 'package:kopa_shop/providers/home_provider.dart';
import 'package:kopa_shop/ui/edit_screen/edit_page.dart';
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
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, homeVM, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 90, right: 280),
              child: EditPage(),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: homeVM.data.length,
                itemBuilder: (context, index) {
                  return CustomCard(homeVM.data[index]);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
