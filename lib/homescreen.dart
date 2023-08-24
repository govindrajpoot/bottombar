import 'package:appsinova/splashscreen.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';

import 'bottomscreen/homepage.dart';
import 'bottomscreen/myQR.dart';
import 'bottomscreen/mybookingscreen.dart';
import 'bottomscreen/profile.dart';
import 'bottomscreen/scanQR.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
    this.title,
  }) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPos = 0;

  double bottomNavBarHeight = 60;


  static  List<Widget> _widgetOptions = <Widget>[

    mybooking(),
    MyHomeP(),
    homepage(),
    MyQRscreen(),
    Profile_Screen(),

    // userpost(),
  ];

  List<TabItem> tabItems = List.of([

    TabItem(
      Icons.border_all,
      "My Booking ",
      Colors.blue,
     // labelStyle: TextStyle(
        //color: Colors.red,
        //fontWeight: FontWeight.bold,
     // ),
    ),
    TabItem(
      Icons.qr_code_scanner,
      "Scan QR",
      Colors.blue,
      //circleStrokeColor: Colors.white,
    ),
    TabItem(
      Icons.home,
      "Home",
      Colors.blue,
     // labelStyle: TextStyle(
        //fontWeight: FontWeight.normal,
     // ),
    ),

    TabItem(
      Icons.qr_code,
      "MyQR",
      Colors.blue,
      circleStrokeColor: Colors.white,
    ),
    TabItem(
      Icons.person,
      "Profile",
      Colors.blue,
    ),
  ]);

  late CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(selectedPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: bottomNav(),
      body:_widgetOptions.elementAt(selectedPos),
    );
  }


  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      selectedPos: selectedPos,
      barHeight: bottomNavBarHeight,
      // use either barBackgroundColor or barBackgroundGradient to have a gradient on bar background
      barBackgroundColor: Colors.white,
      // barBackgroundGradient: LinearGradient(
      //   begin: Alignment.bottomCenter,
      //   end: Alignment.topCenter,
      //   colors: [
      //     Colors.blue,
      //     Colors.red,
      //   ],
      // ),
      backgroundBoxShadow: <BoxShadow>[
        BoxShadow(color: Colors.black45, blurRadius: 10.0),
      ],
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int? selectedPos) {
        setState(() {
          this.selectedPos = selectedPos ?? 0;
          print(_navigationController.value);
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _navigationController.dispose();
  }
}