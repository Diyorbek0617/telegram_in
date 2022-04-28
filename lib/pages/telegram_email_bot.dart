import 'package:flutter/material.dart';
import 'package:telegram_in/pages/text.dart';

class Telegram_email_bot extends StatefulWidget {
  const Telegram_email_bot({Key? key}) : super(key: key);
  static const String id="telegram_email_bot";

  @override
  State<Telegram_email_bot> createState() => _Telegram_email_botState();
}

class _Telegram_email_botState extends State<Telegram_email_bot> {
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
            child: Text(matnlar().telegram_email_bot(),style: const TextStyle(color: Colors.blueGrey,fontSize: 16),textAlign: TextAlign.justify,),
          ),
        ],
      ),
    );
  }
}
