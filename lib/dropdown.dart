import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class Drop extends StatefulWidget {
  const Drop({Key? key}) : super(key: key);

  @override
  State<Drop> createState() => _DropState();
}

class _DropState extends State<Drop> {
  final formKey = GlobalKey<FormState>();
  final List<String> list = [
    'Капустница',
    'Адмирал',
    'Махаон',
    'Перламутровка'
  ];

  final buttdropdown = TextEditingController();

  @override
  void dispose() {
    buttdropdown.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CustomDropdown(
          hintText: 'Выбери бабочку',
          items: list,
          controller: buttdropdown,
          excludeSelected: false,
        ),
      ),
    );
  }
}
