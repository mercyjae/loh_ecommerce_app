import 'package:flutter/material.dart';
import 'package:loh_ecommerce_app/routes/locator.dart';

import 'package:loh_ecommerce_app/views/home_page.dart';
import 'package:loh_ecommerce_app/views/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  dependenciesInjectorSetup();

  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AppViewModel())
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
        home: const AppHomePage());
  }
}
