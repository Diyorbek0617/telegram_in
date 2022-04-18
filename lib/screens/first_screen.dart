import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class Welcome_page extends StatefulWidget {
  const Welcome_page({Key? key}) : super(key: key);
  static const String id = "Welcome_page";
  @override
  _Welcome_pageState createState() => _Welcome_pageState();
}

class _Welcome_pageState extends State<Welcome_page>
    with SingleTickerProviderStateMixin {
//final double size=300.0;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue,
              Colors.teal,
              Colors.green,
              Colors.lightGreenAccent
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child:DefaultTextStyle(
        style: const TextStyle(fontSize: 35.0),
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              'Telegram ma`lumotlari',textStyle:const TextStyle(
                         color: Colors.blueGrey,
                         fontSize: 25,
                         fontFamily: "Nottingsam_Demo"
            ),
              speed: const Duration(milliseconds: 120),
            ),
          ],
          isRepeatingAnimation: true,
          repeatForever: true,
          displayFullTextOnTap: false,
        ),
              ),
            ),

            CircularParticle(
              width: w,
              height: h,
              awayRadius: w / 5,
              numberOfParticles: 150,
              speedOfParticles: 1.5,
              maxParticleSize: 7,
              particleColor: Colors.white.withOpacity(.7),
              awayAnimationDuration: const Duration(milliseconds: 600),
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
          ],
        ),
      ),
    );
  }
}
