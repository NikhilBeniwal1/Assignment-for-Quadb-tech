import 'package:assignment_for_quadb_tech/screens/details_screen.dart';
import 'package:assignment_for_quadb_tech/screens/home_screen.dart';
import 'package:assignment_for_quadb_tech/screens/search_screen.dart';
import 'package:assignment_for_quadb_tech/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/search': (context) => SearchScreen(),
        '/details': (context) => DetailsScreen(),
      },
    );
  }
}
