import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:loh_ecommerce_app/feature/presentation/controller/home_controller.dart';

GetIt getIt = GetIt.I;

dependenciesInjectorSetup() async {
  ///initialize WidgetsFlutterBinding
  WidgetsFlutterBinding.ensureInitialized();

  ///View Model
  getIt.registerFactory<HomeController>(() => HomeController());

  /// Services
  // getIt.registerLazySingleton<NavigationService>(() => NavigationService());
}
