import 'package:flutter/material.dart';
import 'package:portfolio/features/landing/presentation/landing_page.dart';
import 'package:portfolio/theme/app_color.dart';

import 'theme/app_margin.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColor.primary,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColor.primaryDark,
        brightness: Brightness.dark,
        secondary: AppColor.black,
        surface: AppColor.black,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: AppColor.white),
        bodyMedium: TextStyle(color: AppColor.white),
        bodySmall: TextStyle(color: AppColor.white),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: AppColor.white,
            width: 1.0,
          ),
          foregroundColor: AppColor.white,
          textStyle: Theme.of(context).textTheme.bodySmall,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppMargin.dm_06),
          ),
        ),
      ),
      useMaterial3: true,
    );

    return MaterialApp(
      title: 'Joyal - Portfolio',
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
    );
  }
}
