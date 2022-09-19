import 'package:dogdom/page/discover_page.dart';
import 'package:dogdom/page/home_page.dart';
import 'package:dogdom/page/login_page.dart';
import 'package:dogdom/page/main_page.dart';
import 'package:dogdom/page/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const LoginPage(),
        '/main': (context) => const MainPage(),
        '/home': (context) => const HomePage(),
        '/discover': (context) => const DiscoverPage(),
      },
    );
  }
}
