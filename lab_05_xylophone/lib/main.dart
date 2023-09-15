import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int number) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$number.wav'));
  }

  Expanded buildExpanded(Color colors, int number) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(colors),
        ),
        onPressed: () async {
          playSound(number);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildExpanded(Colors.red, 7),
              buildExpanded(Colors.orange, 6),
              buildExpanded(Colors.yellow, 5),
              buildExpanded(Colors.green, 4),
              buildExpanded(Colors.teal, 3),
              buildExpanded(Colors.blue, 2),
              buildExpanded(Colors.purple, 1),
            ],
          ),
        ),
      ),
    );
  }
}
