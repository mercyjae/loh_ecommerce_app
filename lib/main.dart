import 'package:flutter/material.dart';
import 'package:loh_ecommerce_app/core/locator/app_locator.dart';
import 'package:loh_ecommerce_app/feature/presentation/controller/home_controller.dart';
import 'package:loh_ecommerce_app/feature/presentation/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  setupServiceLocator();

  runApp(ChangeNotifierProvider(
    create: (_) => HomeController(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
