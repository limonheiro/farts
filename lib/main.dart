import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FartButton(),
    );
  }
}

class FartButton extends StatelessWidget {
  void randomSound(int number) {
    AudioCache sound = AudioCache();
    sound.play('fart ($number).mp3');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('That Smell'),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                randomSound(Random().nextInt(20) + 1);
              },
              child: Image.asset('images/icons8-smelling-100.png'),
            )
          ],
        ),
      ),
    ));
  }
}
