import 'package:flutter/material.dart';
import 'package:telegram_in/screens/pages_contents_screen.dart';
import 'package:telegram_in/screens/welcome_page.dart';
class Telegram_asoschisi extends StatefulWidget {
  const Telegram_asoschisi({Key? key}) : super(key: key);
  static final String id="telegram_asoschisi";

  @override
  _Telegram_asoschisiState createState() => _Telegram_asoschisiState();
}

class _Telegram_asoschisiState extends State<Telegram_asoschisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(90),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        centerTitle: true,
        title:
        Text('Telegram asoschisi', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
            fontSize: 15),
        ),
      ),

      body: ListView(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Image.asset("assets/Durov2.jpg"),
          ),
          Container(
            padding: EdgeInsets.only(top: 8,left: 3,right: 3,bottom: 2),
            child: Text("Pavel Durov 1984-yil 10-oktabr Rossiyaning Sankt-Peterburg shahrida tavallud topgan."
                "Pavel 11-yoshidan boshlab dasturlashga qiziqadi va o'rganishni boshlaydi."
                "2006-yilda Pavel  Sank Peterburg davlat universitetinining filiollogiya "
                "fakultetini tamomlaytdi. Universitetda o'qish mobaynida harbiy fakultetni ham tamomlab"
                "zahiradagi leytenant unvoniga erishadi,"
                " U universitetni qizil diplomga tamomlab,o'sha yili Vkontakt ijtimoiy tarmog`ini yaratadi."
                "2012-yil 19-noyabrda 'Mann,Ivanov va Ferber'nashiryoti Nikolay Kanonovaning'Kod Durova'deb nomlangan kitobni "
                "chiqardi.Bu kitobda Pavel Durov intervyulardagi nutqlari asosida yozilgan."
                "\n Pavel Durovning boylik haqida nutqlari\n"
                "Mening hayot tarzimni koshonalarda, qo'sha-qo'sha mashinalarda va shaxsiy samalyotlarda"
                "tasavvur qilgan odamlar qattiq yanglishadilar. Menda na samalyot na qimmat sport mashinalari yoki hashamatli saroy bor"
                "Mening kundalik turmushim nihoyatda sodda.Ishga metroda qatnayman va samarali ishdan so'ng 18-20 metr-kvadrat maydondagi"
                "ijara uyda umrguzaronlik qilish."


              ,style: TextStyle( color: Colors.black54,fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4,left: 3,right: 3,bottom: 2),
            height: 230,
            width: double.infinity,
            child: Image.asset("assets/Durov4.png",fit: BoxFit.fill,),
          ),
        ],
      ),
    );
  }
}