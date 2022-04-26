import 'package:flutter/material.dart';
import 'package:telegram_in/pages/text.dart';

class Aktiv_kanallar extends StatefulWidget {
  const Aktiv_kanallar({Key? key}) : super(key: key);
  static const String id="aktiv_kanalar";

  @override
  State<Aktiv_kanallar> createState() => _Aktiv_kanallarState();
}

class _Aktiv_kanallarState extends State<Aktiv_kanallar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent[600],
        title: const Text("Aktiv kanallar",style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children:  [
          Container(
              padding: const EdgeInsets.only(top: 8,left: 3,right: 3,bottom: 2),
              child: Text(matnlar().aktiv_kanallar(),style: const TextStyle(color: Colors.blueGrey,fontSize: 16),textAlign: TextAlign.justify,)),
        ],
      ),
    );
  }
}
