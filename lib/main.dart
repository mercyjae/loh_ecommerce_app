import 'package:flutter/material.dart';
import 'package:loh_ecommerce_app/core/locator/locator.dart';
import 'package:loh_ecommerce_app/feature/presentation/controller/home_controller.dart';

import 'package:loh_ecommerce_app/feature/presentation/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  dependenciesInjectorSetup();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeController())
        ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen());
  }
}
