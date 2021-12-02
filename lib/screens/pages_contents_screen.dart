import 'package:telegram_in/pages/telegram_asoschisi.dart';
import 'package:flutter/material.dart';
import 'package:telegram_in/pages/telegram_turlari.dart';
import 'package:telegram_in/screens/home_screen.dart';
import 'package:telegram_in/pages/telegram_tarixi.dart';


class Pages_contents_screen extends StatefulWidget {
  const Pages_contents_screen({Key? key}) : super(key: key);
  static final String id="pages_contents_screen";
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
          decoration: BoxDecoration(
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
                margin: EdgeInsets.only(top:8, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  onTap:()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Telegram_tarixi())
                    );
                  },
                 trailing: Icon(Icons.arrow_forward_ios),
                  leading:
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/t_h2.jpg'),
                    radius: 19,

                  ),
                  title: Text('Telegram tarixi',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),),
                ),
                elevation: 0,
                color: Colors.white70,
              ),

              Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child:ListTile(
                onTap:()
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Telegram_asoschisi())
                  );
                },
                  trailing: Icon(Icons.arrow_forward_ios),

                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/Durov.png'),
                  radius: 19,
                ),
                title: Text('Telegram asoschisi',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                    fontSize: 15),
                ),
              ),
                elevation: 0,
                color: Colors.white70,
              ),

              Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/t_d5.png'),
                    radius: 19,
                  ),
                  title: Text('Telegram turlari',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
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
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/t_up2.png'),
                    radius: 19,
                  ),
                  title: Text('Telegram versiyalari',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/t_alter3.png'),
                    radius: 19,
                  ),
                  title: Text('Telegram alternatives',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              Card(

                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/channel3.jpg'),
                    radius: 19,
                  ),
                  title: Text('Telegram kanal',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/t_ch2.png'),
                    radius: 19,
                  ),
                  title: Text('Aktiv kanallar',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/t_money2.jpg'),
                    radius: 19,),
                  title: Text('Telegram orqali pul ishlash',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/t_bot2.jpeg'),
                    radius: 19,
                  ),
                  title: Text('Telegram bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/superbot.jpg'),
                    radius: 19,
                  ),
                  title: Text('Mukammal bot yaratish',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                  color: Colors.white70,
              ),

              Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.email),
                  title: Text('Telegram email bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              Card(
                margin: EdgeInsets.only(top:5, left: 9,right: 9,bottom: 5),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.now_wallpaper),
                  title: Text('Guggy Stickers bot',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15),
                  ),
                ),
                elevation: 0,
                color: Colors.white70,
              ),
              Card(
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
              Card(
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
              Card(
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
              Card(
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
              Card(
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
              Card(
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
              Card(
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
              Card(
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
