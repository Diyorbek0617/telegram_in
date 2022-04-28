import 'package:flutter/material.dart';
import 'package:telegram_in/pages/text.dart';

class Mukammal_bot_yaratish extends StatefulWidget {
  const Mukammal_bot_yaratish({Key? key}) : super(key: key);
  static const String id="mukammal_bot_yaratish";

  @override
  State<Mukammal_bot_yaratish> createState() => _Mukammal_bot_yaratishState();
}

class _Mukammal_bot_yaratishState extends State<Mukammal_bot_yaratish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent[600],
        title: const Text("Telegram bot",style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children:  [
          Container(
            padding: const EdgeInsets.only(top: 8,left: 3,right: 3,bottom: 2),
            child: Text(matnlar().mukammal_bot_yaratish(),style: const TextStyle(color: Colors.blueGrey,fontSize: 16),textAlign: TextAlign.justify,),
          ),
        ],
      ),
    );
  }
}
