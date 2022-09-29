import 'package:flutter/material.dart';
import 'package:kopa_shop/constants/app_colors.dart';
import 'package:kopa_shop/constants/app_images.dart';
import 'package:kopa_shop/core/ui/widgets/base_stateful_widget.dart';

class EditPage extends BaseStatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditState();
}

class _EditState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Image.asset(AppImages.vector
        ),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                  height: 500,
                  color: AppColors.navigatorbottom,
                  child: Center(
                    child: ListView(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(color: AppColors.white),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: AppColors.white),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.border)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.white)),
                              focusColor: AppColors.white,
                              labelText: 'Модель',
                              labelStyle: TextStyle(
                                color: AppColors.white,
                              ),
                            ),
                            cursorColor: AppColors.textPrimary,
                          ),
                        ),
                        ElevatedButton(
                          child: const Text('Close BottomSheet'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ));
            },
          );
        });
  }
}
