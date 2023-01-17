import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';



void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                final player= AudioCache();
                player.play('note1.wav');
              },
              child: Text(
                'Click me!!!',
              ),
            ),
          ),
        ),
      ),
    );
  }
  }

