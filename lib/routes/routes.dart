// import 'package:flutter/material.dart';
// import 'package:loh_ecommerce_app/views/home_page.dart';

// import '../views/components/route_error_page.dart';

// class AppRoutes {
//   static const home = '/home';
//   static const details = '/details';
// }

// class AppRouter {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     // E.g Navigator.of(context).pushNamed(AppRoutes.theScreenYouAreGoingTo);
//     switch (settings.name) {
//       case AppRoutes.home:
//         return MaterialPageRoute<dynamic>(
//           builder: (_) => const AppHomePage(),
//           settings: settings,
//           fullscreenDialog: true,
//         );
//       // case AppRoutes.details:
//       //   return MaterialPageRoute<dynamic>(
//       //     builder: (_) => const DetailsScreen(),
//       //     settings: settings,
//       //     fullscreenDialog: true,
//       //   );

//       default:
//         return MaterialPageRoute<dynamic>(
//           builder: (_) => const ErrorPage(),
//           settings: settings,
//           fullscreenDialog: true,
//         );
//     }
//   }
// }
