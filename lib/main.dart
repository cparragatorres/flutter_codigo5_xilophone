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

  Widget bullkey({required int numberNote,required Color colorcito}){
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
          bullkey(numberNote: 1,colorcito: Colors.indigo),
          bullkey(numberNote: 2,colorcito: Colors.lightBlue),
          bullkey(numberNote:3, colorcito: Colors.purpleAccent),
          bullkey(numberNote:4, colorcito: Colors.red),
          bullkey(numberNote:5, colorcito: Colors.orangeAccent),
          bullkey(numberNote:6, colorcito: Colors.amberAccent),
          bullkey(numberNote:7, colorcito: Color(0xff69f0ae)),
        ],
      ),
    );
  }
}
