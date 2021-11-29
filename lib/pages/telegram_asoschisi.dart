import 'package:flutter/material.dart';
import 'package:telegram_in/screens/pages_contents_screen.dart';
import 'package:telegram_in/screens/welcome_page.dart';
class Telegram_asoschisi extends StatefulWidget {
  const Telegram_asoschisi({Key? key}) : super(key: key);

  @override
  _Telegram_asoschisiState createState() => _Telegram_asoschisiState();
}

class _Telegram_asoschisiState extends State<Telegram_asoschisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
        centerTitle: true,
        title:
        Text('Telegram asoschisi', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
            fontSize: 15),

        ),
      ),
    );
  }
}