import 'package:flutter/material.dart';
import 'package:telegram_in/pages/text.dart';

class Telegram_alternative extends StatefulWidget {
  const Telegram_alternative({Key? key}) : super(key: key);
  static const String id="telegram_alternative";

  @override
  State<Telegram_alternative> createState() => _Telegram_alternativeState();
}

class _Telegram_alternativeState extends State<Telegram_alternative> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent[600],
        title: const Text("Telegram alternative",style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children:  [
          Container(
              padding: const EdgeInsets.only(top: 8,left: 3,right: 3,bottom: 2),
              child: Text(matnlar().telegram_alternative(),style: const TextStyle(color: Colors.blueGrey,fontSize: 16),textAlign: TextAlign.justify,)),
        ],
      ),
    );
  }
}
