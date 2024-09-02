import 'package:flutter/material.dart';
import 'package:responsive_design_ostad/presentation/screens/home_screen.dart';


void main() {
  runApp(const ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen()
    );
  }
}