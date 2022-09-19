import 'package:flutter/material.dart';
import 'package:kopa_shop/ui/favorites/favorites.dart';
import 'package:kopa_shop/ui/setting/setting.dart';
import 'package:kopa_shop/ui/splash/splash_screen.dart';
import 'package:kopa_shop/ui/splash/splash_view_model.dart';
import 'package:provider/provider.dart';

import 'archive/archive.dart';

class KopaApp extends StatefulWidget {
  const KopaApp({Key? key}) : super(key: key);

  @override
  State<KopaApp> createState() => _KopaAppState();
}

class _KopaAppState extends State<KopaApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider()),
      ],
      child: MaterialApp(
        routes: {
          '/archive' : (context) => const Archive(),
          '/favorite' : (context) => const Favorite(),
          '/setting' : (context) => const Setting(),
        },
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
