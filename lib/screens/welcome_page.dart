
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_in/pages/telegram_tarixi.dart';
import 'package:telegram_in/screens/home_screen.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:flutter/widgets.dart';



class Welcome_page extends StatefulWidget {
  const Welcome_page({Key? key}) : super(key: key);
  static final String id="Welcome_page";
  @override
  _Welcome_pageState createState() => _Welcome_pageState();
}

class _Welcome_pageState extends State<Welcome_page> with SingleTickerProviderStateMixin{
//final double size=300.0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient( begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue,Colors.teal,Colors.green,Colors.lightGreenAccent],
                  ),
                ),
                child:Stack(
                  children: [
                    CircularParticle(
                      width: w,
                      height: h,
                      awayRadius: w / 5,
                      numberOfParticles: 150,
                      speedOfParticles: 1.5,
                      maxParticleSize: 7,
                      particleColor: Colors.white.withOpacity(.7),
                      awayAnimationDuration: Duration(milliseconds: 600),
                      awayAnimationCurve: Curves.easeInOutBack,
                      onTapAnimation: true,
                      isRandSize: true,
                      isRandomColor: false,
                      connectDots: true,
                      // randColorList: [
                      // Colors.red.withAlpha(210),
                      // Colors.white.withAlpha(210),
                      // Colors.yellow.withAlpha(210),
                      // Colors.green.withAlpha(210),
                      // ],
                      enableHover: true,
                      hoverColor: Colors.black,
                      hoverRadius: 90,
                    ),

                    //    Center(   child: Text("Telegram ma`lumotlari",
                    //      style: TextStyle(fontSize: 20,color: Colors.black54,fontFamily: "Billabong",),
                    //    ),
                    //
                    // ),
                  ],
                ),
                //child: Image.asset('assets/Telegram.png'),
              ),

    );
  }
}
