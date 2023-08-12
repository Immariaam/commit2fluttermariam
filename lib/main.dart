import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(Music());
}

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'أذكار المسلم الصوتية',
              style: TextStyle(
                  fontSize: 33, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            backgroundColor: Color.fromARGB(61, 215, 130, 130),
          ),
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/b3.jpg'),
                ),
              ),
              child: Column(children: [
                TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    player.play(AssetSource('m1.mp3'));
                  },
                  child: Text('أذكار الصباح'),
                ),
                TextButton(
                  onPressed: () async{
                    final player = AudioPlayer();
                    player.play(AssetSource('m2.mp3'));
                  },
                  child: Text('أذكار المساء'),
                )
              ]))),
    );
  }
}
