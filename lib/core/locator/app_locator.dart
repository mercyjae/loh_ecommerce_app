import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:loh_ecommerce_app/feature/presentation/controller/home_controller.dart';

GetIt getIt = GetIt.I;



setupServiceLocator() async {
  ///initialize WidgetsFlutterBinding
  WidgetsFlutterBinding.ensureInitialized();

  ///View Model
  getIt.registerFactory<HomeController>(() => HomeController());

  
}
