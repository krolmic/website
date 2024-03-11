import 'package:flutter/material.dart';
import 'package:website/home/view/home_screen.dart';
import 'package:website/shared/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Michal Krol - Freelance Fullstack Flutter Developer',
      theme: theme,
      home: const HomeScreen(),
    );
  }
}
