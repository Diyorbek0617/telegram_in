import 'package:flutter/material.dart';
import 'package:telegram_in/pages/text.dart';

class Telegram_versiyalari extends StatefulWidget {
  const Telegram_versiyalari({Key? key}) : super(key: key);
  static const String id="telegram_versiyalari";

  @override
  State<Telegram_versiyalari> createState() => _Telegram_versiyalariState();
}

class _Telegram_versiyalariState extends State<Telegram_versiyalari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent[600],
        title: const Text("Telegram versiyalari",style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children:  [
          Container(
              padding: const EdgeInsets.only(top: 8,left: 3,right: 3,bottom: 2),
              child: Text(matnlar().telegram_versiyalari(),style: const TextStyle(color: Colors.blueGrey,fontSize: 16),textAlign: TextAlign.justify,)),
        ],
      ),
    );
  }
}
