import 'package:flutter/material.dart';

class ButterfliesWidget extends StatelessWidget {
  // final int buttid;

  // const ButterfliesWidget({Key? key, required this.buttid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          Hero(
            tag: 'kapusta',
            child: Image(
              image: AssetImage('assets/images/kapustnitza.jpg'),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Дневная бабочка из семейства Белянок (Pieridae). Ярко-белые или ярко-желтые крылья с небольшими черными пятнышками на концах крылышек. Питается капустница всеми видами культур, а не только капустой',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
