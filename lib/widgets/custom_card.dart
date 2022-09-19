import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';

import 'card_price.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: AppColors.card,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Image.asset(
                  AppImages.cross,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 170, top: 1),
                child: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
              ),
                 const Padding(
                  padding: EdgeInsets.only(left: 230, top: 10),
                  child: CardPrice()
                ),
              const Padding(
                padding: EdgeInsets.only(left: 135, top: 10),
                child: Text(
                  ' Nike 992K',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 140, top: 30),
                child: Text(
                  'Розміри стопи: ',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 140, top: 45),
                child: Text(
                  '40',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 180, top: 50),
                child: Text(
                  '28.5',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 165, top: 70),
                child: Text(
                  'Довжина / см',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 250, top: 50),
                child: Text(
                  '10',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 235, top: 70),
                child: Text(
                  'Ширина / см',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 145, top: 70),
                child: Text(
                  'EU',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 140, top: 90),
                child: Text(
                  'Матеріал: Шкіра',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
