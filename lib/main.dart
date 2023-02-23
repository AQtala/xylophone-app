
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String num)
  {
    final player=AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }
  Expanded buildKey(Color color, int number)
  {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary:color),
        onPressed: (){
          playSound('$number');
        },

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red,1),
              buildKey(Colors.orange,2),
              buildKey(Colors.yellow,3),
              buildKey(Colors.green,4),
              buildKey(Colors.teal,5),
              buildKey(Colors.blue,6),
              buildKey(Colors.purple,7),

              // Expanded(
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(primary: Colors.orange),
              //     onPressed: (){
              //       playSound('2');
              //     },
              //
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(primary: Colors.yellow),
              //     onPressed: (){
              //       playSound('3');
              //     },
              //
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(primary: Colors.green),
              //     onPressed: (){
              //       playSound('4');
              //     },
              //
              //   ),
              // ),
              // Expanded(
              //   child:ElevatedButton (
              //     style: ElevatedButton.styleFrom(primary: Colors.teal),
              //     onPressed: (){
              //       playSound('5');
              //     },
              //
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(primary: Colors.blue),
              //     onPressed: (){
              //       playSound('6');
              //     },
              //
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(primary: Colors.purple),
              //     onPressed: (){
              //       playSound('7');
              //     },
              //
              //   ),
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
