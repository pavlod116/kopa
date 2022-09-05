import 'package:flutter/material.dart';
import 'package:kopa_shop/ui/splash/splash_screen.dart';
import 'package:kopa_shop/ui/splash/splash_view_model.dart';
import 'package:provider/provider.dart';

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
        title: 'Splash Screen',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
