
import 'package:telegram_in/screens/about_screen.dart';
import 'package:telegram_in/screens/pages_contents_screen.dart';
import 'package:telegram_in/screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);
 static final String id="home_screen";

  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {

  int _currentTap=0;
  late PageController _pageController;
  @override
  void initState(){
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      // appBar: AppBar(
      //   elevation: 0,
      //   title: Center(
      //     child:Text('Home',style: TextStyle(color:Colors.black,
      //         fontSize: 15),
      //     ),
      //   ),
      // ),
        body:PageView(
         controller: _pageController,
          onPageChanged: (int index){
            setState(() {
              _currentTap= index;
            });
          },
          children: <Widget> [
            Welcome_page(),
            Pages_contents_screen(),
            About_screen(),
         ],
        ),
    //   bottomNavigationBar: FancyBottomNavigation(
    //       tabs:[
    //     TabData(iconData: Icons.home, title:'Bosh menu',),
    //     TabData(iconData: Icons.pages, title:'Mundarija',),
    //     TabData(iconData: Icons.assignment, title:'Dastur haqida',),
    //    ],
    //       initialSelection: _currentTap,
    //       onTabChangedListener: (position){
    // setState((){
    //  _currentTap=position;
    //  _pageController.animateToPage(position,
    //      duration: Duration(milliseconds: 50), curve: Curves.easeIn);
    // },
    // );
    // },
    // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title:Text("Bosh menu")),
          BottomNavigationBarItem(icon: Icon(Icons.assignment),title:Text("Mundarija")),
          BottomNavigationBarItem(icon: Icon(Icons.perm_device_information),title:Text("Dastur haqida")),
        ],
        currentIndex: _currentTap,
        onTap:(position) {
          setState(() {
            _currentTap = position;
            _pageController.animateToPage(position,
                duration: Duration(milliseconds: 50), curve: Curves.easeIn);
          },
          );
        },
        ),
    );
  }

}
