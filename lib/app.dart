import 'package:flutter/material.dart';

import 'screens/login_page.dart';
import 'theme/app_colors.dart';

class PlateScanApp extends StatelessWidget {
  const PlateScanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Platewise',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: ink,
        colorScheme: const ColorScheme.dark(primary: lime, surface: panel),
        fontFamily: 'Roboto',
      ),
      home: const LoginPage(),
    );
  }
}
