// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  List<String> images = [
    'assets/frame11.png',
    'assets/frame6.png',
    'assets/frame7.png',
    'assets/frame8.png',
    'assets/frame9.png',
    'assets/frame10.png',
  ];

  ImageTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: images.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          images[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}
