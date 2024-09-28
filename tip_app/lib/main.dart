import 'package:flutter/material.dart';
import 'package:tip_app/Features/Tip/View/TipBaseView.dart';
import 'package:tip_app/Themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Tip App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData,
        home: const TipBaseView(),
      );
}
