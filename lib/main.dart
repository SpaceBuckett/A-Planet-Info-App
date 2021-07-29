import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'info_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'mainPage',
      routes: {
        'mainPage': (context) => MySliverAppBar(),
        'planetDetailPage': (context) => PlanetDetail(),
      },
    );
  }
}
