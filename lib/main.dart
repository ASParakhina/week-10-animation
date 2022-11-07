import 'package:flutter/material.dart';
import 'package:week_10_animation/animation.dart';
import 'package:week_10_animation/butterflie.dart';

// import 'package:untitled/helper/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'week 10',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Scaffold(
          appBar: AppBar(),
        ),
        routes: {
          '/': (context) => const Listbutt(),
          '/one': (context) => ButterfliesWidget()
        });
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
