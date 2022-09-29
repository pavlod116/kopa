import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kopa_shop/enums/states/notifier_states.dart';
import 'package:kopa_shop/providers/base_provider.dart';
import 'package:kopa_shop/ui/home/home_screen.dart';
import 'package:kopa_shop/ui/login_screen/login_screen.dart';

class SplashProvider extends BaseProvider {
  final auth = FirebaseAuth.instance;

  Future init(BuildContext context) async {
    setNotifier(NotifierState.loading);
    Timer(
      const Duration(seconds: 1),
      () => auth.currentUser == null
          ? Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()))
          : Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => const Home()))
    );
  }
}
