
import 'package:flutter/material.dart';


void main(){
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
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("XilophoneApp"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){

          },
          child: Text("Click!"),
        ),
      ),
    );
  }
}
