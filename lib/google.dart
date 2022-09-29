import 'package:flutter/material.dart';
import 'package:kopa_shop/services/auth/auth.dart';
import 'package:provider/provider.dart';

class Google extends StatefulWidget {
  const Google({Key? key}) : super(key: key);

  @override
  State<Google> createState() => _GoogleState();
}

class _GoogleState extends State<Google> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            FloatingActionButton(
              tooltip: 'Google',
              onPressed: () {
                context.read<FirebaseAuthMethods>().signInWithGoogle(context);
              },
            ),

            FloatingActionButton(
              tooltip: 'Google',
              onPressed: () {
                // context.read<FirebaseAuthMethods>().deleteAccount(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
