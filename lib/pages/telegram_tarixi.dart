
import 'package:flutter/cupertino.dart';
import 'package:telegram_in/screens/pages_contents_screen.dart';
import 'package:telegram_in/screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Telegram_tarixi extends StatefulWidget {
  const Telegram_tarixi({Key? key}) : super(key: key);
  static final String id="telegram_tarixi";

  @override
  _Telegram_tarixiState createState() => _Telegram_tarixiState();
}

class _Telegram_tarixiState extends State<Telegram_tarixi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
          centerTitle: true,
        title:
         Text('Telegram tarixi', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
        fontSize: 18),
    ),
    ),
     // body: Container(child: Image.asset("assets/history.jpg",)),
      body: Stack(
        children: [
          Container(
            height: double.infinity,width: double.infinity,
                color: Colors.teal,
                  child: Image.asset("assets/history.jpg",fit: BoxFit.none,),
              ),
           ListView(
             children: [
               Container(
                 height: 200,
                 width: double.infinity,
                 child: Image.asset("assets/t_t.png",fit: BoxFit.cover,),
               ),
               Container(
                 padding: EdgeInsets.only(top: 8,left: 3,right: 3,bottom: 2),
                 child: Text("'Telegram' so'zi Telegramma so`zidan kelib chiqgan."
                     "Telegramma bu axborot yuboruvchi va qabul qiluvchi vosita."
                     "Telegram Telegrammaning avlodi desa ham bo'ladi."
                     "Telegram asosan smartfonlar uchun mo'jallangan."
                     "Telegram 2013-yil dastlabki versiyasi yaratilgan."
                     "2013-yil 14-avgustda dastlabki telegram IOS uchun"
                     "paydo bo'ldi.2013-yil 22-avgustda Android platformasi"
                     "uchun telegram messangeri yaratildi."
                   "shu yilning oktabr oyida messangerining 'telegram.org' "
                     "nomli sayti ishga tushdi."
                     "ma'lumotlarga ko'ra 2013-yil noyabr oyi hisobiga ko'ra Telegram "
                     "dasturini yuklab olish 1 milliondan oshgan."
                     "Telegramning serverlari 5 ta davlatda joylashgan. Yevropa foydalanuvchilari uchun Londondagi"
                     "datacenter, Osiyo uchun Singapurdagi datacenter, Amerikaliklar"
                     " uchun San - Fransiskodagi va boshqa joydagi datacenterlar bor."
                     "Telegramning shtab-kvartirasi Berlinda joylashgan."
                     "Datacenterdagi ma`lumotlar bir necha klasterlarda va ma`lum bir kalitlar asosida"
                     "shirflangan holda saqlanadi,U ma`lumotlarni copilyatorlarniz"
                     "o'qishning imkoni yo'q.Google Durovning Telegram messangerini sotib olmoqchi bo'lgan."
                     "Google kompaniyasi vakillari telegramni 1 million dollarga baholashgan."
                     "Ushbu holat 2015-yil may oyida bo'lgan."


                     ,style: TextStyle( color: Colors.black54,fontSize: 16),
                   textAlign: TextAlign.justify,

                 ),
               ),
             ],
           ),
        ],
      ),

    );
}
}