import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kopa_shop/ui/kopa.dart';


Future main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const KopaApp());
}