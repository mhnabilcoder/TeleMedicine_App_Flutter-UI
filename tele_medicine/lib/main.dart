import 'package:flutter/material.dart';
import 'package:tele_medicine/UI/Components/widgets/exit_popup.dart';
import 'package:tele_medicine/UI/main_screens/notification_screen.dart';

import 'UI/main_screens/chat_screen.dart';
import 'UI/main_screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeliMed',
      debugShowCheckedModeBanner: false,
      home: const mainScreen(),
    );
  }
}

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ChatPage(),
    NotificationPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(
            color: Colors.cyan,
            size: 28.0,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
            size: 24.0,
          ),
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem( icon: Icon(Icons.home,),label: "" ,),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble,),label: "",),
            BottomNavigationBarItem(icon: Icon(Icons.notifications,),label: "",),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),

      ),
    );
  }
}
