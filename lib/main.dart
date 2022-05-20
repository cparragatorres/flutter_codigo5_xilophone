import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  AudioCache audioCache = AudioCache();

  void playNote(int number){
    audioCache.play("audios/note$number.wav");
  }

  Widget bullkey(int numberNote, Color colorcito){
    return Expanded(
      child: Container(
        color: colorcito,
        child: TextButton(
          onPressed: () {
            playNote(numberNote);
          },
          child: const Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("XilophoneApp"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          bullkey(1, Colors.black),
          bullkey(2, Colors.pink),
          bullkey(3, Colors.black12),
        ],
      ),
    );
  }
}
