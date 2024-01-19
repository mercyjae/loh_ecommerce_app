import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:loh_ecommerce_app/views/view_model/home_view_model.dart';



GetIt getIt = GetIt.I;

dependenciesInjectorSetup() async {
  ///initialize WidgetsFlutterBinding
  WidgetsFlutterBinding.ensureInitialized();

  ///View Model
  getIt.registerFactory<HomeViewModel>(() => HomeViewModel());

  /// Services
 // getIt.registerLazySingleton<NavigationService>(() => NavigationService());

}