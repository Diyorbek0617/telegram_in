
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:telegram_in/pages/telegram_asoschisi.dart';
import 'package:telegram_in/pages/telegram_tarixi.dart';
import 'package:telegram_in/pages/telegram_turlari.dart';
import 'package:telegram_in/screens/home_screen.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';


class Welcome_page extends StatefulWidget {
 // const Welcome_page({Key? key}) : super(key: key);
  static final String id="Welcome_page";
  final GlobalKey<FabCircularMenuState> _key =GlobalKey();
  @override
  _Welcome_pageState createState() => _Welcome_pageState();
}

class _Welcome_pageState extends State<Welcome_page> with SingleTickerProviderStateMixin{
//final double size=300.0;

  @override
  Widget build(BuildContext context) {
    final primaryColor=Theme.of(context).primaryColor;
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
                child: CircularParticle(
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



              ),
           // floatingActionButton: SpeedDial(
           //   animatedIcon: AnimatedIcons.menu_close,
           //   animatedIconTheme: IconThemeData(size: 22.0),
           //   overlayColor: Colors.black,
           //   overlayOpacity: 0.5,
           //   onOpen: ()=>print("yes"),
           //   onClose: ()=>print("no"),
           //   backgroundColor: Colors.white,
           //   foregroundColor: Colors.black,
           //   shape: CircleBorder(),
           //   children: [
           //     SpeedDialChild(
           //       child: Icon(Icons.accessibility),
           //       backgroundColor: Colors.green,
           //       label: "yangilanish",
           //       labelStyle: TextStyle(fontSize: 18.0),
           //       onTap: ()=>print("ok"),
           //     ),
           //     SpeedDialChild(
           //       child: Icon(Icons.home),
           //       backgroundColor: Colors.green,
           //       label: "yangilanish",
           //       labelStyle: TextStyle(fontSize: 18.0),
           //       onTap: ()=>print("ok"),
           //     ),
           //     SpeedDialChild(
           //       child: Icon(Icons.cancel),
           //       backgroundColor: Colors.green,
           //       label: "yangilanish",
           //       labelStyle: TextStyle(fontSize: 18.0),
           //       onTap: ()=>print("ok"),
           //     ),
           //   ],
           // ),

    floatingActionButton: Builder(
    builder: (context) => FabCircularMenu(
    alignment: Alignment.bottomRight,
    // Cannot be Alignment.center
    //key:_key,
    ringColor: Colors.blue.withAlpha(40),
    ringDiameter: 500.0,
    ringWidth: 150.0,
    fabSize: 64.0,
    fabElevation: 8.0,
    fabIconBorder: CircleBorder(),
    // Also can use specific color based on wether
    // the menu is open or not:
    // fabOpenColor: Colors.white
    // fabCloseColor: Colors.white
    // These properties take precedence over fabColor
    fabColor: Colors.white,
    fabOpenIcon: Icon(Icons.menu, color: primaryColor),
    fabCloseIcon: Icon(Icons.close, color: primaryColor),
    fabMargin: const EdgeInsets.only(left:16.0,right: 16,bottom:16.0),
    animationDuration: const Duration(milliseconds: 800),
    animationCurve: Curves.easeInOutCirc,
    onDisplayChange: (isOpen) {

    },
    children: <Widget>[

      RawMaterialButton(
        onPressed: () {
        },

        shape: CircleBorder(),
        child:
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: new Text("Ma`lumot"),
                      content:  new Text("Yangilangan versiya mavjud emas!!!",style: TextStyle(fontSize: 12,color: Colors.black),),
                      actions: <Widget>[
                        new FlatButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: new Text("ok"),),
                      ],
                    ) ;
                  }
              );
            },
            color: Colors.indigoAccent.withAlpha(100),
            child:Text("Updated",style: TextStyle(fontSize: 13,color: Colors.black87,fontWeight: FontWeight.bold),
              // child: Icon(Icons.account_circle_sharp, color: Colors.green,
            ),
          ),
        ),

    RawMaterialButton(

    onPressed: () {
    },
    shape: CircleBorder(),
      child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          onPressed: (){
            showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: new Text("Ma`lumot"),
                    content:  new Text("Yangiliklar sahifasi mavjud emas!!!",style: TextStyle(fontSize: 12,color: Colors.black),),
                    actions: <Widget>[
                      new FlatButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        child: new Text("ok"),),
                    ],
                  ) ;
                }
            );
          },
          color: Colors.tealAccent.withAlpha(100),
          child:Text("News",style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),
            // child: Icon(Icons.account_circle_sharp, color: Colors.green,
          ),
        ),
      ),
    RawMaterialButton(

    onPressed: () {
    },
    shape: CircleBorder(),
      child:  FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          onPressed: (){
            showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: new Text("Ma`lumot"),
                    content:  new Text("Softwares sahifasi mavjud emas!!!",style: TextStyle(fontSize: 12,color: Colors.black),),
                    actions: <Widget>[
                      new FlatButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        child: new Text("ok"),),
                    ],
                  ) ;
                }
            );
          },
          color: Colors.white70,
          child:Text("Softwares",style: TextStyle(fontSize: 12,color: Colors.blue,fontWeight: FontWeight.bold),
            // child: Icon(Icons.account_circle_sharp, color: Colors.green,
          ),
        ),
      ),

    RawMaterialButton(
    onPressed: () {
    },
    shape: CircleBorder(),
      child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          onPressed: (){
            showDialog(
            context: context,
            builder: (BuildContext context){
            return AlertDialog(
            title: new Text("Ma`lumot"),
            content:  new Text("Feedback sahifasi mavjud emas!!!",style: TextStyle(fontSize: 12,color: Colors.black),),
            actions: <Widget>[
            new FlatButton(
            onPressed: (){
            Navigator.of(context).pop();
            },
            child: new Text("ok"),),
            ],
            ) ;
            }
            );
            },
          color: Colors.white30,
          child:Text("Feedback",style: TextStyle(fontSize: 13,color: Colors.red[300],fontWeight: FontWeight.bold),
            // child: Icon(Icons.account_circle_sharp, color: Colors.green,
          ),
        ),
      ),

     ],
    ),
    ),
    );
  }
        @override
    void _showSnackBar(BuildContext context, String message)
    {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(milliseconds: 1000),
        ),
    );
  }
}
