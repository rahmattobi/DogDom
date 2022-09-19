import 'package:dogdom/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DogCard extends StatelessWidget {
  String? image;
  DogCard({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 355,
      margin: const EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          image: AssetImage(image.toString()),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: 175,
        margin: EdgeInsets.only(
          left: defaultMargin,
          top: 38,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Take Me Home',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Take care of stray dogs, please \ntake them home.',
              style: primaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 80,
              height: 28,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Let Me',
                    style: whiteTextStyle.copyWith(fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
