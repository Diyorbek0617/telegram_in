import 'package:telegram_in/pages/aktiv_kanallar.dart';
import 'package:telegram_in/pages/guggy_va_guggy_stickers_bot.dart';
import 'package:telegram_in/pages/mukammal_bot_yaratish.dart';
import 'package:telegram_in/pages/telegram_alternative.dart';
import 'package:telegram_in/pages/telegram_asoschisi.dart';
import 'package:flutter/material.dart';
import 'package:telegram_in/pages/telegram_bot.dart';
import 'package:telegram_in/pages/telegram_email_bot.dart';
import 'package:telegram_in/pages/telegram_kanal.dart';
import 'package:telegram_in/pages/telegram_orqali_pul_ishlash.dart';
import 'package:telegram_in/pages/telegram_turlari.dart';
import 'package:telegram_in/pages/telegram_tarixi.dart';
import 'package:telegram_in/pages/telegram_versiyalari.dart';


class Pages_contents_screen extends StatefulWidget {
  const Pages_contents_screen({Key? key}) : super(key: key);
  static const String id="pages_contents_screen";
  @override
  _Pages_contents_screenState createState() => _Pages_contents_screenState();
}

class _Pages_contents_screenState extends State<Pages_contents_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:
      Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:AssetImage("assets/t7.png"),
             // fit:BoxFit.cover,
              alignment: Alignment.center,
            ),
            gradient: LinearGradient( begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.cyan,Colors.blueAccent,Colors.lightBlueAccent,Colors.indigoAccent],
          ),
          ),
          child: ListView(
            children: <Widget>[
              // ListBody(
              //   children: [
              //     Text('data')
              //   ],
              // ),
              Card(
                margin: const EdgeInsets.only(top:8, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  onTap:()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Telegram_tarixi())
                    );
                  },
                 trailing: const Icon(Icons.arrow_forward_ios),
                  leading:
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/t_h2.jpg'),
                    radius: 19,

                  ),
                  title: const Text('Telegram tarixi',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),),
                ),
                elevation: 0,
                color: Colors.white70,
              ),

              Card(
                margin: const EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child:ListTile(
                onTap:()
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Telegram_asoschisi())
                  );
                },
                  trailing: const Icon(Icons.arrow_forward_ios),

                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/Durov.png'),
                  radius: 19,
                ),
                title: const Text('Telegram asoschisi',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                    fontSize: 15),
                ),
              ),
                elevation: 0,
                color: Colors.white70,
              ),

              Card(
                margin: const EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios),
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/t_d5.png'),
                    radius: 19,
                  ),
                  title: const Text('Telegram turlari',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, Telegram_turlari.id);
                  },
                ),

                elevation: 0,
                color: Colors.white70,
              ),
               Card(
                margin: const EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, Telegram_versiyalari.id);
                  },
                  trailing:const Icon(Icons.arrow_forward_ios),
                  leading:const  CircleAvatar(
                    backgroundImage: AssetImage('assets/tel_update.webp'),
                    radius: 19,
                  ),
                  title:const Text('Telegram versiyalari',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
               Card(
                margin:const EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, Telegram_alternative.id);
                  },
                  trailing: const Icon(Icons.arrow_forward_ios),
                  leading:const CircleAvatar(
                    backgroundImage: AssetImage('assets/t_alter3.png'),
                    radius: 19,
                  ),
                  title: const Text('Telegram alternatives',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
               Card(
                margin: const EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, Telegram_kanal.id);
                  },
                  trailing:const Icon(Icons.arrow_forward_ios),
                  leading:const CircleAvatar(
                    backgroundImage: AssetImage('assets/channel3.jpg'),
                    radius: 19,
                  ),
                  title:const Text('Telegram kanal',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
               Card(
                margin:const EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, Aktiv_kanallar.id);
                  },
                  trailing:const Icon(Icons.arrow_forward_ios),
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/t_ch2.png'),
                    radius: 19,
                  ),
                  title: const Text('Aktiv kanallar',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
               Card(
                margin: const EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, Telegram_orqali_pul_ishlash.id);
                  },
                  trailing:const Icon(Icons.arrow_forward_ios),
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/t_money2.jpg'),
                    radius: 19,),
                  title:const Text('Telegram orqali pul ishlash',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
               Card(
                margin:const EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, Telegram_bot.id);
                  },
                  trailing:const Icon(Icons.arrow_forward_ios),
                  leading:const CircleAvatar(
                    backgroundImage: AssetImage('assets/t_bot2.jpeg'),
                    radius: 19,
                  ),
                  title: const Text('Telegram bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
               Card(
                margin: const EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, Mukammal_bot_yaratish.id);
                  },
                  trailing:const Icon(Icons.arrow_forward_ios),
                  leading:const CircleAvatar(
                    backgroundImage: AssetImage('assets/superbot.jpg'),
                    radius: 19,
                  ),
                  title:const Text('Mukammal bot yaratish',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                  color: Colors.white70,
              ),

               Card(
                margin: const EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, Telegram_email_bot.id);
                  },
                  trailing:const Icon(Icons.arrow_forward_ios),
                  leading: const Icon(Icons.email),
                  title:const Text('Telegram email bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
               Card(
                margin:const EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, Guggy_va_guggy_stickers_bot.id);
                  },
                  trailing: const Icon(Icons.arrow_forward_ios),
                  leading:const Icon(Icons.now_wallpaper),
                  title: const Text('Guggy va Guggy Stickers bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              const Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.import_contacts),
                  title: Text('Html Format bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                  color: Colors.white70,
              ),
              const Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.import_contacts),
                  title: Text('Like bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              const Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.import_contacts),
                  title: Text('Name to map',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              const Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.import_contacts),
                  title: Text('Post bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                  color: Colors.white70,
              ),
              const Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.import_contacts),
                  title: Text('Builder bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              const Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.import_contacts),
                  title: Text('Vk music bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              const Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.import_contacts),
                  title: Text('Vote bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              const Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.contacts),
                  title: Text('Apk downloader bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),

            ],
          ),
        ),
    );
  }
}
