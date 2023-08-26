import 'package:flutter/material.dart';

import 'colors.dart';
import 'responsive/responsive_layout.dart';
import 'screens/mobile_screen_layout.dart';
import 'screens/web_screen_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: backgroundColor,
          background: backgroundColor
        ),
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
