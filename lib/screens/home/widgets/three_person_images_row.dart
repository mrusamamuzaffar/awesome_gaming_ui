import 'package:flutter/material.dart';

class ThreePersonImagesRow extends StatelessWidget {
  const ThreePersonImagesRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
      width: 37,
      child: Stack(
        children: const [
          Positioned(
            left: 22,
            child: Image(
              height: 15,
              width: 15,
              image: AssetImage('assets/images/home/person_3.png'),
            ),
          ),
          Positioned(
            left: 11,
            child: Image(
              height: 15,
              width: 15,
              image: AssetImage('assets/images/home/person_2.png'),
            ),
          ),
          Image(
            height: 15,
            width: 15,
            image: AssetImage('assets/images/home/person_1.png'),
          ),
        ],
      ),
    );
  }
}
