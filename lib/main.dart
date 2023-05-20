import 'package:flutter/material.dart';
import 'package:newsapp/screens/article_screen.dart';
import 'package:newsapp/screens/discover_screens.dart';
import 'package:newsapp/screens/home_screen.dart';
import 'package:newsapp/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          DiscoverScreen.routeName: (context) => const DiscoverScreen(),
          ProfileScreen.routeName: (context) => const ProfileScreen(),
          ArticleScreen.routeName: ((context) => const ArticleScreen()),
        });
  }
}
