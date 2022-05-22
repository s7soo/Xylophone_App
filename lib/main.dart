import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());
final player = AudioCache();
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                button(1,Colors.red),
                button(2,Colors.yellow),
                button(3,Colors.orange),
                button(4,Colors.blue),
                button(5,Colors.pink),
                button(6,Colors.green),
                button(7,Colors.cyanAccent),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Expanded button(int num,Color color){
    return Expanded(
      child: FlatButton(onPressed: (){
        player.play('note$num.wav');
      },
        color: color,
      ),
    );
  }
}

