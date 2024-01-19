import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:loh_ecommerce_app/views/view_model/app_view_model.dart';



GetIt getIt = GetIt.I;

dependenciesInjectorSetup() async {
  ///initialize WidgetsFlutterBinding
  WidgetsFlutterBinding.ensureInitialized();

  ///View Model
  getIt.registerFactory<AppViewModel>(() => AppViewModel());

  /// Services
 // getIt.registerLazySingleton<NavigationService>(() => NavigationService());

}