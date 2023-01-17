import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  Expanded buildKey({Color color, int notenumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          final player = AudioCache();
          player.play('note$notenumber.wav');
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
              buildKey(color: Colors.red, notenumber: 1),
              buildKey(color: Colors.orange, notenumber: 2),
              buildKey(color: Colors.yellow, notenumber: 3),
              buildKey(color: Colors.teal, notenumber: 4),
              buildKey(color: Colors.green, notenumber: 5),
              buildKey(color: Colors.purple, notenumber: 6),
              buildKey(color: Colors.blue, notenumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
