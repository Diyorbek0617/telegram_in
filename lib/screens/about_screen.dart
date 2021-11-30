import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:telegram_in/screens/home_screen.dart';

class About_screen extends StatefulWidget {
  const About_screen({Key? key}) : super(key: key);
  static final String id="about_screen";
  @override
  _About_screenState createState() => _About_screenState();
}

class _About_screenState extends State<About_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:Container(
      decoration: BoxDecoration(
        gradient: LinearGradient( begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.cyan,Colors.blueAccent,Colors.lightBlueAccent,Colors.indigoAccent],
        ),
    ),
        child: ListView(
                  children: [
                    Container(
                      color: Colors.black12,
                      child: Text("Telegram ma`lumotlari dasturi haqida",
                        style: TextStyle(
                          fontSize: 23,
                          //fontWeight:FontWeight.bold,
                          fontFamily: "Billabong",
                          color: Colors.black,
                        ),
                      ),
                      padding: EdgeInsets.only(top: 15,),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.black12,
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/t7.png"),
                            margin: EdgeInsets.all(5),
                            height: 150,
                            width: 150,
                          ),
                        ],
                      ),

                    ),
                    Container(
                      height: 220,
                      width: double.infinity,
                      color: Colors.black12,
                      child: Text(
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

                           Container(
                             padding: EdgeInsets.only(right: 50,left: 50),
                             height: 50,
                             width: double.infinity,
                        // color: Colors.black12,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: FlatButton(

                            onPressed: (){
                              showDialog(
                                context: context,
                                builder: (BuildContext context){
                                return AlertDialog(
                                  title: new Text("Ma`lumot"),
                                  content:  new Text("Telegram orqali bog`lanish hozircha mavjud emas!!!",style: TextStyle(fontSize: 12,color: Colors.black),),
                                  actions: <Widget>[
                                    new FlatButton(onPressed: (){
                                      Navigator.of(context).pop();
                                    },
                                      child: new Text("ok"),),
                                  ],
                                ) ;
                                }
                              );
                            },
                            child: Text("Bog`lanish",style: TextStyle(fontSize:14,color: Colors.red),),
                           color: Colors.teal,
                        ),
                      ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      color: Colors.black12,
                      child: Text(
                        "Telegram yaratuvchilari haqida dasturimizning keyingi versiyalarida ma`lumot beriladi.",style: TextStyle(
                        fontSize: 13,color: Colors.black,inherit: true,
                      ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20,top:10),
                      height: 400,
                      width: double.infinity,
                      color: Colors.black12,
                      child: Image.asset("assets/creators.jpg"),
                    ),

                    Container(
                      padding: EdgeInsets.only(top: 100,),

                      height: 120,
                      width: double.infinity,
                      color: Colors.black12,
                      child: Text(

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
