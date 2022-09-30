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
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 16,
        minHeight: 16,
      ),
      child: IconButton(
          icon: Image.asset(AppImages.vector),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 375,
                    minHeight: 401,
                  ),
                  child: Container(
                    color: AppColors.navigatorbottom,
                    child: Center(
                      child: ListView(
                        children: <Widget>[
                          ConstrainedBox(
                              constraints: const BoxConstraints(
                                minWidth: 97,
                                minHeight: 16,
                              ),
                              child: const Text('Модель')),
                          Padding(
                            padding: const EdgeInsets.only(left: 17, right: 16, top: 109),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                minWidth: 342,
                              ),
                              child: const TextField(
                                style: TextStyle(color: AppColors.white),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: AppColors.white),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: AppColors.border)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: AppColors.white)),
                                  focusColor: AppColors.white,
                                  labelText: 'Модель',
                                  labelStyle: TextStyle(
                                    color: AppColors.white,
                                  ),
                                ),
                                cursorColor: AppColors.textPrimary,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 17, right: 16, top: 74),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                minHeight: 1,
                                minWidth: 342,
                              ),
                              child: const TextField(
                                style: TextStyle(color: AppColors.white),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: AppColors.white),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: AppColors.border)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: AppColors.white)),
                                  focusColor: AppColors.white,
                                  labelText: 'Матеріал',
                                  labelStyle: TextStyle(
                                    color: AppColors.white,
                                  ),
                                ),
                                cursorColor: AppColors.textPrimary,
                              ),
                            ),
                          ),
                          Stack(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 17, right: 260),
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(
                                  minHeight: 1,
                                  minWidth: 98,
                                ),
                                child: const TextField(
                                  style: TextStyle(color: AppColors.white),
                                  decoration: InputDecoration(
                                    hintStyle:
                                        TextStyle(color: AppColors.white),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.border)),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: AppColors.white)),
                                    focusColor: AppColors.white,
                                    labelText: 'Розмір',
                                    labelStyle: TextStyle(
                                      color: AppColors.white,
                                    ),
                                  ),
                                  cursorColor: AppColors.textPrimary,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 135, right: 142),
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(
                                  minHeight: 1,
                                  minWidth: 98,
                                ),
                                child: const TextField(
                                  style: TextStyle(color: AppColors.white),
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(color: AppColors.white),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                        BorderSide(color: AppColors.border)),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                        BorderSide(color: AppColors.white)),
                                    focusColor: AppColors.white,
                                    labelStyle: TextStyle(
                                      color: AppColors.white,
                                    ),
                                  ),
                                  cursorColor: AppColors.textPrimary,
                                ),
                              ),
                            ),
                          ],),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              child: const Text('Close BottomSheet'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
