// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/pages/settings.dart';
import 'package:travel_app/pages/signup.dart';
import 'package:travel_app/pages/welcomepage.dart';
import 'package:travel_app/pages/loginpage.dart';
import 'package:travel_app/pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      );
  }

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider<SignupPage>(create: (_) => SigninPage()),
        
//       ],
//       child: MyApp(),
//     ),
//   );
// }








  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(), // default page
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => SignupPage(),
      ),
        GoRoute(
        path: '/loginpage',
        builder: (context, state) => SigninPage(),
      ),
        GoRoute(
        path: '/settings',
        builder: (context, state) => settingPage(),
      ),
    ],
  );
}
