import 'package:flutter/material.dart';
import 'package:kopa_shop/services/auth/auth.dart';
import 'package:kopa_shop/ui/main_tabs/main_tab.dart';
import 'package:provider/provider.dart';

Future init(BuildContext context) async {
  context.read<FirebaseAuthMethods>().signInWithGoogle(context).then((value) =>
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MainTab())));
}
