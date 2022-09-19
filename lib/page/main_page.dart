import 'package:custom_top_navigator/custom_scaffold.dart';
import 'package:dogdom/page/add_page.dart';
import 'package:dogdom/page/chat_page.dart';
import 'package:dogdom/page/circle_page.dart';
import 'package:dogdom/page/home_page.dart';
import 'package:dogdom/page/profile_page.dart';
import 'package:dogdom/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;

  final List<Widget> _listPage = [
    const HomePage(),
    const CirclePage(),
    const AddPage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  void tap(int value) {
    setState(() {
      currentPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      onItemTap: tap,
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPageIndex,
          onTap: tap,
          items: [
            BottomNavigationBarItem(
              icon: currentPageIndex == 0
                  ? Image.asset(
                      'assets/home1.png',
                      width: 24,
                    )
                  : Image.asset(
                      'assets/home.png',
                      width: 24,
                    ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: currentPageIndex == 1
                  ? Image.asset(
                      'assets/circle1.png',
                      width: 24,
                    )
                  : Image.asset(
                      'assets/circle.png',
                      width: 24,
                    ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/add.png',
                width: 24,
                color: currentPageIndex == 2 ? redColor : primaryColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: currentPageIndex == 3
                  ? Image.asset(
                      'assets/chat1.png',
                      width: 24,
                    )
                  : Image.asset(
                      'assets/chat.png',
                      width: 24,
                    ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: currentPageIndex == 4
                  ? Image.asset(
                      'assets/profile1.png',
                      width: 24,
                    )
                  : Image.asset(
                      'assets/profile.png',
                      width: 24,
                    ),
              label: '',
            ),
          ],
        ),
      ),
      children: _listPage,
    );
  }
}
