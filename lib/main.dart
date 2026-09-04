import 'package:flutter/material.dart';
import 'package:stepz_store/core/routing/goroute.dart';
import 'package:stepz_store/core/theme/theme.dart';
import 'package:stepz_store/features/Authentication/pages/signin_page.dart';
import 'package:stepz_store/features/Authentication/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Stepz App',
      theme: AppTheme.lightTheme,
      routerConfig: router,
    );
  }
}
