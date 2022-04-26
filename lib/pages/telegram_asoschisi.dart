import 'package:flutter/material.dart';
import 'package:telegram_in/pages/text.dart';
class Telegram_asoschisi extends StatefulWidget {
  const Telegram_asoschisi({Key? key}) : super(key: key);
  static const String id="telegram_asoschisi";

  @override
  _Telegram_asoschisiState createState() => _Telegram_asoschisiState();
}

class _Telegram_asoschisiState extends State<Telegram_asoschisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        centerTitle: true,
        title:
        const Text('Telegram asoschisi', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.asset("assets/Durov2.jpg",fit: BoxFit.cover,),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8,left: 3,right: 3,bottom: 2),
            child: Text(matnlar().telegram_asoschisi(),style: const TextStyle( color: Colors.black54,fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 4,left: 1,right: 1,bottom: 1),
            height: 230,
            width: double.infinity,
            child: Image.asset("assets/Durov4.png",fit: BoxFit.fill,),
          ),
        ],
      ),
    );
  }
}