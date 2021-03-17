// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:magic_number_app/bloc/asset_bloc.dart';
// import 'package:magic_number_app/pages/asset_form_page.dart';
// import 'package:magic_number_app/pages/home_screen_page.dart';
// import 'package:splashscreen/splashscreen.dart';

// class SplashScreenPage extends StatefulWidget {
//   @override
//   _SplashScreenPage createState() => _SplashScreenPage();
// }

// class _SplashScreenPage extends State<SplashScreenPage> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<AssetBloc, AssetState>(listener: (context, state) {
//       Navigator.of(context).push(
//         MaterialPageRoute<SplashScreenPage>(
//           builder: (_) => BlocProvider.value(
//             value: BlocProvider.of<AssetBloc>(context),
//             child: _splashContent(context),
//           ),
//         ),
//       );
//     });
//     // return Scaffold(
//     //   body: _splashContent(context),
//     // );
//   }
// }

// Widget _splashContent(BuildContext context) {
//   return Container(
//     child: Center(
//       child: SplashScreen(
//         useLoader: true,
//         loaderColor: Colors.blue,
//         seconds: 2,
//         image: new Image.asset('assets/logo_transparent.png'),
//         photoSize: 150.0,
//         navigateAfterSeconds: AssetFormPage(),
//       ),
//     ),
//   );
// }
// // Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: DetailScreen()));
