
import 'package:flutter/material.dart';
import 'package:telegram_in/pages/text.dart';

class Telegram_tarixi extends StatefulWidget {
  const Telegram_tarixi({Key? key}) : super(key: key);
  static const String id="telegram_tarixi";

  @override
  _Telegram_tarixiState createState() => _Telegram_tarixiState();
}

class _Telegram_tarixiState extends State<Telegram_tarixi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
          centerTitle: true,
        title:
         const Text('Telegram tarixi', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
    ),
    ),
     // body: Container(child: Image.asset("assets/history.jpg",)),
      body: Stack(
        children: [
           ListView(
             children: [
               SizedBox(
                 height: 200,
                 width: double.infinity,
                 child: Image.asset("assets/t_t.png",fit: BoxFit.cover,),
               ),
               Container(
                 padding: const EdgeInsets.only(top: 8,left: 3,right: 3,bottom: 2),
                 child: Text(matnlar().telegram_tarixi(),style: const TextStyle( color: Colors.black54,fontSize: 16),
                   textAlign: TextAlign.justify,

                 ),
               ),
             ],
           ),
        ],
      ),

    );
}
}