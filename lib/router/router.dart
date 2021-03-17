// import 'package:flutter/material.dart';
// import 'package:magic_number_app/model/asset.dart';
// import 'package:magic_number_app/pages/asset_details_page.dart';
// import 'package:magic_number_app/pages/error_page.dart';
// import 'package:magic_number_app/pages/home_screen_page.dart';
// import 'package:magic_number_app/router/routing_constants.dart';
// import 'package:magic_number_app/pages/splash_screen_page.dart';

// Route<dynamic> generateRoute(RouteSettings settings) {
//   final arguments = settings.arguments;

//   final Asset test = arguments;

//   switch (settings.name) {
//     case SplashScreenPageRoute:
//       return MaterialPageRoute(builder: (context) => SplashScreenPage());

//     case HomeScreenPageRoute:
//       return MaterialPageRoute(builder: (context) => HomeScreenPage());

//     case AssetDetailsPageRoute:
//       return MaterialPageRoute(
//         builder: (context) => AssetDetailsPage(
//           assetData: test,
//         ),
//       );

//     case ErrorPageRoute:
//       return MaterialPageRoute(builder: (context) => ErrorPage());

//     default:
//       MaterialPageRoute(builder: (context) => HomeScreenPage());
//   }
// }
