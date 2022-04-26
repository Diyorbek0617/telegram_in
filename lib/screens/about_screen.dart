import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

const String _url = 'https://telegram.me/spenser_mobile_developer';


class About_screen extends StatefulWidget {
  const About_screen({Key? key}) : super(key: key);
  static const String id="about_screen";
  @override
  _About_screenState createState() => _About_screenState();
}

class _About_screenState extends State<About_screen> {

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Telegram ma`lumotlari dasturi haqida",style: TextStyle(
          fontSize: 24,
          //fontWeight:FontWeight.bold,
          fontFamily: "Billabong",
          color: Colors.black,
        ),),
        centerTitle: true,
        elevation: 0,
      ),
      body:Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient( begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.cyan,Colors.blueAccent,Colors.lightBlueAccent,Colors.indigoAccent],
        ),
    ),
        child: ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top:10,left: 3,right: 3,),
                      width: double.infinity,
                      color: Colors.black12,
                      child: const Text(
                        "Dastur telegram ijtimoiy tarmog`ida faol bo'lish maqsadida yaratilgan."
                        "Dasturdagi ma`lumotlardan ijtimoiy maqsadlarda foydalanilganda, Dastlabki manbasi bilan ko'rsatilisin."
                        "Dasturning keyingi versiyalarida yangi ma`lumotlarida qo'shilishi taminlanadi."
                        "Ushbu dasturni rivojlantirish yoki hamkorlik qilish va boshqa masalalarda mening telegramdagi sahifamga muroja`at qilishingiz mumkin."
                        ,style: TextStyle(
                        fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold,
                      ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                           // bog'lanish tugmasi
                           Container(
                             padding: const EdgeInsets.only(top:10),
                             height: 60,
                             width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.black12,
                        ),
                        child: Center(
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.5),
                            ),
                              onPressed: (){
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                  return AlertDialog(
                                    title: const Text("Ma`lumot"),
                                    content:  const Text("Bo'lanish uchun internet tarmog'iga ulangan bo'lishingiz kerak."
                                        "Internet tarmog'ida bo'lsangiz bo'lanish tugmasini bosing. Aks holda chiqish tugmasini bosing.",style: TextStyle(fontSize: 12,color: Colors.black),),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: (){
                                          _launchURL();
                                          Navigator.pop(context);
                                      },
                                        child: const Text("bog'lanish"),),
                                      TextButton(
                                        onPressed: (){
                                          Navigator.pop(context);
                                        },
                                        child: const Text("chiqish"),),
                                    ],
                                  ) ;
                                  }
                                );

                              },
                              child: const Text("Bog`lanish",style: TextStyle(fontSize:15,color: Colors.white70),),
                             color: Colors.green[700],
                          ),
                        ),
                      ),
                    // telegram yaratuvchilari
                    Container(
                      padding: const EdgeInsets.only(top: 8,left: 10,right: 10,),
                      height: 40,
                      width: double.infinity,
                      color: Colors.black12,
                      child: const Text(
                        "Telegram jamoasi",style: TextStyle(
                        fontSize: 20,color: Colors.red,inherit: true,
                        fontFamily: "Billabong"
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20,),
                      height: 400,
                      width: double.infinity,
                      color: Colors.black12,
                      child: Image.asset("assets/creators.jpg",fit: BoxFit.fill,),
                    ),

                    Container(
                      padding: const EdgeInsets.only(top: 100,),

                      height: 120,
                      width: double.infinity,
                      color: Colors.black12,
                      child: const Text(

                        "Version   1.0.0.0",style: TextStyle(
                        fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
    );
  }
}
