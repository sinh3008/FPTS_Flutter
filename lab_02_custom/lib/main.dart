import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Row(
        children: [
          buildExpanded(Colors.red, CrossAxisAlignment.start),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.green,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          buildExpanded(Colors.blue, CrossAxisAlignment.end),
        ],
      ),
    );
  }

  Expanded buildExpanded(Color color, CrossAxisAlignment cs) {
    return Expanded(
      child: Column(
        crossAxisAlignment: cs,
        children: [
          Expanded(
            child: Container(
              width: 100,
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
