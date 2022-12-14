import 'dart:math';

import 'package:flutter/material.dart';

class Listbutt extends StatefulWidget {
  const Listbutt({super.key});

  @override
  State<Listbutt> createState() => _ListbuttState();
}

class _ListbuttState extends State<Listbutt>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 70),
                AnimatedBuilder(
                  animation: _controller.view,
                  builder: (context, child) {
                    return Transform.rotate(
                        angle: _controller.value * 2 * pi, child: child);
                  },
                  child: SizedBox(
                      height: 300,
                      width: 200,
                      child: Image.asset('assets/images/batt.jpg')),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                SizedBox(
                  width: 200,
                  child: Hero(
                      tag: 'kapusta',
                      child: Image.asset('assets/images/kapustnitza.jpg')),
                ),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/one');
                  },
                  child: const Text('Heroanimation'),
                )
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Expanded(child: Image.asset('assets/images/machaon.jpeg')),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/three');
                  },
                  child: const Text('?????????????? ??????????????????'),
                )
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                SizedBox(
                    width: 200,
                    child: Image.asset('assets/images/admiral.jpeg')),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/three');
                  },
                  child: const Text('????????????'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
