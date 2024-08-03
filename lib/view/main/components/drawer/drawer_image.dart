import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(defaultPadding / 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.blue.shade900,
            ],
          ),
          boxShadow: const [
            BoxShadow(
                color: Colors.orange, blurRadius: 10, offset: Offset(0, 2)),
            BoxShadow(
                color: Colors.blue, blurRadius: 10, offset: Offset(0, -2)),
          ]),
      child: Container(
          clipBehavior: Clip.antiAlias,
          height: 80,
          width: 80,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            'assets/images/sayed ali  v2 cropped.png',
            fit: BoxFit.cover,
          )),
    );
  }
}
