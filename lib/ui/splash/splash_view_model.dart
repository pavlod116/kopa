import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kopa_shop/ui/login_screen/login_screen.dart';
import '../../enums/states/notifier_states.dart';
import '../../providers/base_provider.dart';

class SplashProvider extends BaseProvider {
  Future init(BuildContext context) async {
    setNotifier(NotifierState.loading);
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }
}
