import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/core/widgets/base_stateful_widget.dart';
import 'package:kopa_shop/models/shoes_card.dart';
import 'package:kopa_shop/ui/card_screen/card_page.dart';

import 'card_price.dart';

class CustomCard extends BaseStatefulWidget {
  const CustomCard(this.item, {super.key});

  final ShoesCard item;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const CardPage()));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 338,
                minHeight: 120,
              ),
              child: Card(
                color: widget.item.color!,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Stack(children: [
                    ConstrainedBox(
                      constraints:
                          const BoxConstraints(minWidth: 50, minHeight: 50),
                      child: Image(image: AssetImage('${widget.item.image}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 11, top: 1),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                            minWidth: 24.13, minHeight: 22.2),
                        child: const IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 260, top: 10),
                        child: CardPrice()),
                    Padding(
                      padding: const EdgeInsets.only(left: 151, top: 10),
                      child: SizedBox(
                        width: 73.91,
                        height: 18.4,
                        child: Text(
                          '${widget.item.name}',
                          style: const TextStyle(
                              fontSize: 16, color: AppColors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 151, top: 37),
                      child: SizedBox(
                        width: 72,
                        height: 11.5,
                        child: Text(
                          '${widget.item.foot}',
                          style: const TextStyle(
                              fontSize: 10, color: AppColors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 151, top: 52),
                      child: SizedBox(
                        width: 28,
                        height: 25,
                        child: Text(
                          '${widget.item.width}',
                          style: const TextStyle(
                              fontSize: 22, color: AppColors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 197, top: 57),
                      child: SizedBox(
                        width: 46,
                        height: 16,
                        child: Text(
                          '${widget.item.length}',
                          style: const TextStyle(
                              fontSize: 14, color: AppColors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 180, top: 80),
                      child: SizedBox(
                        width: 68,
                        height: 16.1,
                        child: Text(
                          '${widget.item.lengthsm}',
                          style: const TextStyle(
                              fontSize: 10, color: AppColors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 280, top: 57),
                      child: SizedBox(
                        width: 28,
                        height: 16.1,
                        child: Text(
                          '${widget.item.size}',
                          style: const TextStyle(
                              fontSize: 14, color: AppColors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 253, top: 81),
                      child: SizedBox(
                        width: 65,
                        height: 11.5,
                        child: Text(
                          '${widget.item.widthsm}',
                          style: const TextStyle(
                              fontSize: 10, color: AppColors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 158, top: 82),
                      child: SizedBox(
                        width: 46,
                        height: 11.5,
                        child: Text(
                          '${widget.item.eu}',
                          style: const TextStyle(
                              fontSize: 10, color: AppColors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 151, top: 103),
                      child: SizedBox(
                        width: 139,
                        height: 11.5,
                        child: Text(
                          '${widget.item.materialle}',
                          style: const TextStyle(
                              fontSize: 10, color: AppColors.white),
                        ),
                      ),
                    ),
                  ]),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
