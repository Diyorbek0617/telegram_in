
import 'package:telegram_in/screens/pages_contents_screen.dart';
import 'package:telegram_in/screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Telegram_tarixi extends StatefulWidget {
  const Telegram_tarixi({Key? key}) : super(key: key);

  @override
  _Telegram_tarixiState createState() => _Telegram_tarixiState();
}

class _Telegram_tarixiState extends State<Telegram_tarixi> {
 List <String> list=[''];
String add='';
 //String tarix="Telegram dasturi Pavel Durov tomonidan 2013-yili yaratilgan.";



 fetchFileData() async{
   String tarix;
   tarix= await rootBundle.loadString('assets/tekst.txt');


   setState((){
   add=tarix;
   }
   );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
          centerTitle: true,
        title:
         Text('Telegram tarixi', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
        fontSize: 15),
    ),
    ),
      body: Text(add),

    );
}
}