import 'package:flutter/material.dart';
import 'package:whatsapp/colrs.dart';
import 'package:whatsapp/responsive/responsive_layout.dart';
import 'package:whatsapp/screens/mobile_screen.dart';
import 'package:whatsapp/screens/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResposnsiveLayout(
          mobilescreenlay: mobilescreeen(), webscreenlay: Webscreeen()),
    );
  }
}
