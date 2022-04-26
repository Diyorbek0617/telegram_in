import 'package:flutter/material.dart';
import 'package:telegram_in/pages/text.dart';

class Telegram_kanal extends StatefulWidget {
  const Telegram_kanal({Key? key}) : super(key: key);
  static const String id="telegram_kanal";

  @override
  State<Telegram_kanal> createState() => _Telegram_kanalState();
}

class _Telegram_kanalState extends State<Telegram_kanal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent[600],
        title: const Text("Telegram kanal",style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children:  [
          Container(
              padding: const EdgeInsets.only(top: 8,left: 3,right: 3,bottom: 2),
              child: Text(matnlar().telegram_kanal(),style: const TextStyle(color: Colors.blueGrey,fontSize: 16),textAlign: TextAlign.justify,)),
        ],
      ),
    );
  }
}
