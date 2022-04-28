import 'dart:js';

import 'package:flutter/material.dart';
import 'package:telegram_in/pages/aktiv_kanallar.dart';
import 'package:telegram_in/pages/guggy_va_guggy_stickers_bot.dart';
import 'package:telegram_in/pages/mukammal_bot_yaratish.dart';
import 'package:telegram_in/pages/telegram_alternative.dart';
import 'package:telegram_in/pages/telegram_asoschisi.dart';
import 'package:telegram_in/pages/telegram_bot.dart';
import 'package:telegram_in/pages/telegram_email_bot.dart';
import 'package:telegram_in/pages/telegram_kanal.dart';
import 'package:telegram_in/pages/telegram_orqali_pul_ishlash.dart';
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
      Telegram_orqali_pul_ishlash.id:(context)=>const Telegram_orqali_pul_ishlash(),
      Telegram_bot.id:(context)=>const Telegram_bot(),
      Mukammal_bot_yaratish.id:(context)=>const Mukammal_bot_yaratish(),
      Telegram_email_bot.id:(context)=>const Telegram_email_bot(),
      Guggy_va_guggy_stickers_bot.id:(context)=>const Guggy_va_guggy_stickers_bot(),
    },
  ),
  );
}
