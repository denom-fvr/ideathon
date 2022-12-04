import 'package:flutter/material.dart';
import 'package:ideathon/screens/layouts/mobile_layout/mobile_layout.dart';
import 'constants/colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ideathon',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const MobileLayout(),
    );
  }
}

