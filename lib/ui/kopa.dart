import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kopa_shop/core/widgets/base_stateful_widget.dart';
import 'package:kopa_shop/providers/home_provider.dart';
import 'package:kopa_shop/providers/main_tab_provider.dart';
import 'package:kopa_shop/services/auth/auth.dart';
import 'package:kopa_shop/ui/splash/splash_screen.dart';
import 'package:kopa_shop/ui/splash/splash_view_model.dart';
import 'package:provider/provider.dart';

class KopaApp extends BaseStatefulWidget {
  const KopaApp({super.key});

  @override
  State<KopaApp> createState() => _KopaAppState();
}

class _KopaAppState extends State<KopaApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => MainTabViewModel()),
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        Provider<FirebaseAuthMethods>(
          create: (_) => FirebaseAuthMethods(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<FirebaseAuthMethods>().authState,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
