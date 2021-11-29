import 'package:flutter/material.dart';
import 'package:telegram_in/screens/about_screen.dart';
import 'package:telegram_in/screens/home_screen.dart';
import 'package:telegram_in/screens/loading.dart';
import 'package:telegram_in/screens/pages_contents_screen.dart';
import 'package:telegram_in/screens/welcome_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loading(),
    routes: {
      About_screen.id:(context)=>About_screen(),
      Loading.id:(context)=>Loading(),
      Home_screen.id:(context)=>Home_screen(),
      Welcome_page.id:(context)=>Welcome_page(),
      Pages_contents_screen.id:(context)=>Pages_contents_screen()
    },
  ),
  );
}
