import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              child: const Text(
                'Click me',
              ),
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note1.wav'));
              },
            ),
          ),
        ),
      ),
    );
  }
}
