import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XyloApp());

class XyloApp extends StatelessWidget {
  const XyloApp({Key? key}) : super(key: key);
  void playSound(int sNumber) {
    final player = AudioCache();
    player.play('note$sNumber.wav');
  }

  Expanded buildKey({Color color = Colors.red, int sNumber = 1}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(sNumber);
        },
        child: Container(color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, sNumber: 1),
                buildKey(color: Colors.orange, sNumber: 2),
                buildKey(color: Colors.yellow, sNumber: 3),
                buildKey(color: Colors.green, sNumber: 4),
                buildKey(color: Colors.teal, sNumber: 5),
                buildKey(color: Colors.blue, sNumber: 6),
                buildKey(color: Colors.cyan, sNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
