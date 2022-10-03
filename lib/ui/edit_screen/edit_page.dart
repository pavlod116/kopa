library flutter_localizations;

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
                          Padding(
                            padding: const EdgeInsets.only(left: 32, top: 52),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                minWidth: 97,
                                minHeight: 16,
                              ),
                              child: const Text(
                                'Модель',
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 14),
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 17, right: 16, top: 21),
                            child: TextField(
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
                          Padding(
                            padding: const EdgeInsets.only(left: 32, top: 52),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                minWidth: 97,
                                minHeight: 16,
                              ),
                              child: const Text(
                                'Матеріал',
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 14),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 17, right: 16, top: 21),
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
                                  labelStyle: TextStyle(
                                    color: AppColors.white,
                                  ),
                                ),
                                cursorColor: AppColors.textPrimary,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 32, top: 52),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                minWidth: 97,
                                minHeight: 16,
                              ),
                              child: const Text(
                                'Розмір',
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 14),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
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
                                          borderSide: BorderSide(
                                              color: AppColors.white)),
                                      focusColor: AppColors.white,
                                      labelStyle: TextStyle(
                                        color: AppColors.white,
                                      ),
                                    ),
                                    cursorColor: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 135, right: 142),
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
                                          borderSide: BorderSide(
                                              color: AppColors.white)),
                                      focusColor: AppColors.white,
                                      labelStyle: TextStyle(
                                        color: AppColors.white,
                                      ),
                                    ),
                                    cursorColor: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 32, top: 52),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                minWidth: 97,
                                minHeight: 16,
                              ),
                              child: const Text(
                                'Ціна',
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 14),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
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
                                          borderSide: BorderSide(
                                              color: AppColors.white)),
                                      focusColor: AppColors.white,
                                      labelStyle: TextStyle(
                                        color: AppColors.white,
                                      ),
                                    ),
                                    cursorColor: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 135, right: 142),
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
                                          borderSide: BorderSide(
                                              color: AppColors.white)),
                                      focusColor: AppColors.white,
                                      labelStyle: TextStyle(
                                        color: AppColors.white,
                                      ),
                                    ),
                                    cursorColor: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [Padding(
                              padding: const EdgeInsets.only(left: 166, top: 10),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                onPressed: () => Navigator.pop(context),
                                child: const Text('СКИНУТИ', style: TextStyle(fontSize: 13, color: AppColors.focus),),
                              ),
                            ),

                          Padding(
                            padding: const EdgeInsets.only(left: 250, top: 10),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () => Navigator.pop(context),
                              child: const Text('ЗАСТОСУВАТИ', style: TextStyle(fontSize: 13, color: AppColors.focus),),
                            ),
                          ),
                ]),
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
