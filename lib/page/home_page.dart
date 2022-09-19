import 'package:dogdom/page/discover_page.dart';
import 'package:dogdom/theme.dart';
import 'package:dogdom/widget/dog_card.dart';
import 'package:dogdom/widget/menu_card.dart';
import 'package:dogdom/widget/post_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(
          top: defaultMargin,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Select',
                        style: primaryTextStyle.copyWith(
                          fontSize: 17,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        'assets/underline.png',
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 38,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const DiscoverPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Discover',
                          style: primaryTextStyle.copyWith(
                            fontSize: 17,
                            fontWeight: semiBold,
                            color: primaryColor.withOpacity(0.4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/notification.png',
            ),
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: defaultMargin,
        ),
        height: 40,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.05),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 6,
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: primaryColor.withOpacity(0.25),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Send the sample',
                    hintStyle: primaryTextStyle.copyWith(
                      color: primaryColor.withOpacity(0.25),
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.mic,
                color: primaryColor.withOpacity(0.55),
              ),
            ],
          ),
        ),
      );
    }

    Widget menu() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MenuCard(image: 'assets/rangking.png', name: 'Ranking'),
              MenuCard(image: 'assets/interlocution.png', name: 'Discuss'),
              MenuCard(image: 'assets/surrounding.png', name: 'Surrounding'),
            ],
          ),
        ),
      );
    }

    Widget menu2() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DogCard(image: 'assets/dog1.png'),
              DogCard(image: 'assets/dog2.png'),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 10,
          bottom: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            PostCard(
              profile: 'assets/post1.png',
              name: 'Mirabelle Swift',
              desc: 'Adwords Keyword Research For Beginners.',
              image: 'assets/post1.png',
              nName: 'Golden Retriever · Mobile ',
            ),
            const PostCard2(),
            PostCard(
              profile: 'assets/post2.png',
              name: 'Jorge Long',
              desc:
                  'A dog is a beloved, intelligent, and very loyal animal. So I like dogs very much.',
              image: 'assets/post2.png',
              nName: 'Labrador Peninsula · Atlanta ',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          search(),
          menu(),
          menu2(),
          content(),
        ],
      ),
    );
  }
}
