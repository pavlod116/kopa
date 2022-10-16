import 'package:flutter/material.dart';
import 'package:kopa_shop/core/widgets/base_stateful_widget.dart';

class Shoes extends BaseStatefulWidget {
  const Shoes({Key? key}) : super(key: key);

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Shoes'),);
  }
}
