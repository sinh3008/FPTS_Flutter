import 'package:flutter/material.dart';
import 'screen/home/input_screen.dart';

void main() {
  runApp(BMICaculator());
}

class BMICaculator extends StatelessWidget {
  BMICaculator({super.key});

  final ThemeData them = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0XFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(),
    );
  }
}
