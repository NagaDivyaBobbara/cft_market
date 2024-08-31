import 'package:cft_market/pages/Auth/login_screen.dart';
import 'package:cft_market/pages/my_account/my_account_screen.dart';
import 'package:cft_market/pages/sale_order_detail/sale_order_detail_screen.dart';
import 'package:cft_market/serviceLocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  await initServiceProvider();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CFTMarket',
      theme: ThemeData(
        fontFamily: "PublicSans",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}

