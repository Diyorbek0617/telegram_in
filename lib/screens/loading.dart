import 'dart:async';
import 'package:flutter/material.dart';
import 'package:telegram_in/screens/home_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:page_transition/page_transition.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);
  static final String id="loading";
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState(){
    super.initState();
    startTime();
  }

  startTime(){
    var duration = Duration(seconds: 5,);
    return Timer( duration,route);
  }

  route(){
    Navigator.pushReplacement(
        context,MaterialPageRoute(builder: (context)=>Home_screen())
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body:
         Stack(
          children: [
            Column(
             children: [
               SizedBox(
                 height: 300,
               ),
               Align(
                 alignment: Alignment.center,
                child: DefaultTextStyle(
                   style: TextStyle(fontSize: 30.0),
                   child: AnimatedTextKit(
                     animatedTexts: [
                       TyperAnimatedText(
                         'Telegram ma`lumotlari',textStyle:TextStyle(fontSize: 23,color: Colors.blueAccent,letterSpacing: 1,fontWeight: FontWeight.bold,) ,
                         speed: Duration(milliseconds: 120),
                       ),
                     ],
                     isRepeatingAnimation: false,
                     repeatForever: false,
                     displayFullTextOnTap: false,
                   ),
               ),
               ),
               SizedBox(
                 height: 70,
               ),
               Center(
                 child: Align(
                   alignment: Alignment.center,
                   child: SpinKitFadingCircle(
                     color: Colors.indigoAccent,
                     size: 200.0,
                   ),
                 ),
               ),
             ],
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Powered by Greatlorts Entertaiment',style: TextStyle(
                fontSize: 11,color: Colors.white,letterSpacing: 1,fontWeight: FontWeight.bold
              ),
              ),
            ),
          ],
        ),

    );
    }
}
