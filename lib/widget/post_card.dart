import 'package:flutter/material.dart';
import 'package:dogdom/theme.dart';

import 'image_tile.dart';

// ignore: must_be_immutable
class PostCard extends StatelessWidget {
  String? name;
  String? nName;
  String? profile;
  String? desc;
  String? image;

  PostCard(
      {Key? key, this.name, this.nName, this.profile, this.desc, this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage(
                      profile.toString(),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name.toString(),
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      nName.toString(),
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        color: primaryColor.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 80,
                height: 28,
                decoration: BoxDecoration(
                  color: redColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Follow',
                      style: whiteTextStyle.copyWith(fontSize: 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            desc.toString(),
            style: primaryTextStyle.copyWith(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  image.toString(),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        'assets/like.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '5,233',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        color: primaryColor.withOpacity(0.4),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        'assets/comment.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '189',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        color: primaryColor.withOpacity(0.4),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        'assets/share.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '238',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        color: primaryColor.withOpacity(0.4),
                      ),
                    )
                  ],
                ),
              ),
              Image.asset('assets/option.png'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class PostCard2 extends StatelessWidget {
  const PostCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/frame1.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mirabelle Swift',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Golden Retriever · Mobile ',
                      style: primaryTextStyle.copyWith(
                          fontSize: 12, color: primaryColor.withOpacity(0.4)),
                    ),
                  ],
                ),
              ),
              Container(
                width: 80,
                height: 28,
                decoration: BoxDecoration(
                  color: redColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Follow',
                      style: whiteTextStyle.copyWith(fontSize: 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Adwords Keyword Research For Beginners.',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 250,
            child: ImageTile(),
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        'assets/like.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '5,233',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        color: primaryColor.withOpacity(0.4),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        'assets/comment.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '189',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        color: primaryColor.withOpacity(0.4),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        'assets/share.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '238',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        color: primaryColor.withOpacity(0.4),
                      ),
                    )
                  ],
                ),
              ),
              Image.asset('assets/option.png'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
