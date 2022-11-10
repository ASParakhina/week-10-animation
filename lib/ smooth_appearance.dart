import 'package:flutter/material.dart';

class Smooth extends StatefulWidget {
  const Smooth({super.key});

  @override
  State<Smooth> createState() => _SmoothState();
}

class _SmoothState extends State<Smooth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: const [
        Expanded(
          child: FadeInImage(
            placeholder: AssetImage('assets/images/sun.png'),
            image: AssetImage('assets/images/admiral.jpeg'),
          ),
        ),
        SizedBox(height: 40),
        Expanded(
            child: FadeInImage(
                placeholder: AssetImage('assets/images/sun.png'),
                image: AssetImage('assets/images/machaon.jpeg')))
      ]),
    );
  }
}
