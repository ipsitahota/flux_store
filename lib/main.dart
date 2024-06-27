import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(FluxStoreApp());
}

class FluxStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FluxStore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false, // Remove the debug banner
    );
  }
}
