import 'package:flutter/material.dart';
import 'package:loh_ecommerce_app/routes/locator.dart';

import 'package:loh_ecommerce_app/feature/view/home_page.dart';
import 'package:loh_ecommerce_app/feature/controller/home_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  dependenciesInjectorSetup();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel())
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
