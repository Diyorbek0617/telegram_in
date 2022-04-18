import 'package:flutter/material.dart';
import 'package:telegram_in/pages/text.dart';
class Telegram_turlari extends StatefulWidget {
  const Telegram_turlari({Key? key}) : super(key: key);
  static const String id="telegram_turlari";

  @override
  _Telegram_turlariState createState() => _Telegram_turlariState();
}

class _Telegram_turlariState extends State<Telegram_turlari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent[600],
        title: const Text("Telegram turlari",style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children:  [
          Text(matnlar().telegram_turlari(),style: TextStyle(color: Colors.blueGrey),textAlign: TextAlign.justify,),
        ],
      ),
    );
  }
}
