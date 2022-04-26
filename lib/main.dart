import 'package:flutter/material.dart';
import 'package:telegram_in/pages/aktiv_kanallar.dart';
import 'package:telegram_in/pages/telegram_alternative.dart';
import 'package:telegram_in/pages/telegram_asoschisi.dart';
import 'package:telegram_in/pages/telegram_kanal.dart';
import 'package:telegram_in/pages/telegram_tarixi.dart';
import 'package:telegram_in/pages/telegram_turlari.dart';
import 'package:telegram_in/pages/telegram_versiyalari.dart';
import 'package:telegram_in/screens/about_screen.dart';
import 'package:telegram_in/screens/home_screen.dart';
import 'package:telegram_in/screens/pages_contents_screen.dart';
import 'package:telegram_in/screens/first_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Home_screen(),
    routes: {
      About_screen.id:(context)=>const About_screen(),
      Home_screen.id:(context)=>const Home_screen(),
      Welcome_page.id:(context)=>const Welcome_page(),
      Pages_contents_screen.id:(context)=>const Pages_contents_screen(),
      //content text
      Telegram_tarixi.id:(context)=>const Telegram_tarixi(),
      Telegram_asoschisi.id:(context)=>const Telegram_asoschisi(),
      Telegram_turlari.id:(context)=>const Telegram_turlari(),
      Telegram_versiyalari.id:(context)=>const Telegram_versiyalari(),
      Telegram_alternative.id:(context)=>const Telegram_alternative(),
      Telegram_kanal.id:(context)=>const Telegram_kanal(),
      Aktiv_kanallar.id:(context)=>const Aktiv_kanallar(),
    },
  ),
  );
}
