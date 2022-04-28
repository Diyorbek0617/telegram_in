import 'package:flutter/material.dart';
import 'package:telegram_in/pages/text.dart';

class Telegram_orqali_pul_ishlash extends StatefulWidget {
  const Telegram_orqali_pul_ishlash({Key? key}) : super(key: key);
  static const String id="telegram_orqali_pul_ishlash";

  @override
  State<Telegram_orqali_pul_ishlash> createState() => _Telegram_orqali_pul_ishlashState();
}

class _Telegram_orqali_pul_ishlashState extends State<Telegram_orqali_pul_ishlash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent[600],
        title: const Text("Telegram orqali pul ishlash",style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children:  [
          Container(
              padding: const EdgeInsets.only(top: 8,left: 3,right: 3,bottom: 2),
              child: Text(matnlar().telegram_orqali_pul_ishlash(),style: const TextStyle(color: Colors.blueGrey,fontSize: 16),textAlign: TextAlign.justify,)),
        ],
      ),
    );
  }
}
