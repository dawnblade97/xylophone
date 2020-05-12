import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = [
      Colors.red,
      Colors.blue,
      Colors.yellow,
      Colors.green,
      Colors.purple,
      Colors.white70,
      Colors.teal
    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text("Xylophone app",
          style: TextStyle(
            color:Colors.white,
          ),
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              for (int i = 0; i <= 6; i++)
                Expanded(
                    child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      var k = i + 1;
                      player.play('note$k.wav');
                      print("playing audio"); //debug
                    },
                    //child: Text("click me"),
                    color: list[i],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
