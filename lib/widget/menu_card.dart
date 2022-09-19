import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuCard extends StatelessWidget {
  String? name;
  String? image;
  MenuCard({Key? key, this.name, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      child: Column(
        children: [
          Image.asset(
            image.toString(),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(name.toString()),
        ],
      ),
    );
  }
}
