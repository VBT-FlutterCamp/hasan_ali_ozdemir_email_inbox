import 'package:flutter/material.dart';
import 'package:main_screen_homework/screens/home_page.dart';
import 'package:main_screen_homework/screens/onboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (BuildContext context) => const HomePage(),
      },
      home: const OnBoardPage(),
    );
  }
}

