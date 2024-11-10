import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Redirect to the home screen after a delay
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });

    return Scaffold(
      backgroundColor: Colors.black,  // Set background to black
      body: Center(
        child: Text(
          'NETFLIX',
          style: TextStyle(
            color: Colors.redAccent,      // Netflix red color
            fontSize: 50,                 // Large font size
            fontWeight: FontWeight.bold,  // Bold font
            letterSpacing: 2.0,           // Adds some spacing for style
          ),
        ),
      ),
    );
  }
}
