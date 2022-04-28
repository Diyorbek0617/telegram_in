import 'package:flutter/material.dart';
import 'package:telegram_in/pages/text.dart';

class Guggy_va_guggy_stickers_bot extends StatefulWidget {
  const Guggy_va_guggy_stickers_bot({Key? key}) : super(key: key);
  static const String id="guggy_va_guggy_stickers_bot";

  @override
  State<Guggy_va_guggy_stickers_bot> createState() => _Guggy_va_guggy_stickers_botState();
}

class _Guggy_va_guggy_stickers_botState extends State<Guggy_va_guggy_stickers_bot> {
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
            child: Text(matnlar().guggy_va_guggy_stickers_bot(),style: const TextStyle(color: Colors.blueGrey,fontSize: 16),textAlign: TextAlign.justify,),
          ),
        ],
      ),
    );
  }
}
