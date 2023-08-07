import 'package:flutter/material.dart';
import 'package:newproject/screens/dashboard/dashborad_screens/create_activity_page.dart';
import 'package:newproject/screens/dashboard/dashborad_screens/emogi_page.dart';
import 'package:newproject/screens/dashboard/dashborad_screens/home_page.dart';
import 'package:newproject/screens/dashboard/dashborad_screens/message_page.dart';
import 'package:newproject/screens/dashboard/dashborad_screens/profie_page.dart';
import 'package:newproject/utils/colors.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomePage(), // Replace with your screen widgets
    MessagePage(),
    CreateActivityPage(),
    EmogiPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              _currentIndex == 0 ? 'assets/homeblue.png' : 'assets/home.png',
              height: 25,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _currentIndex == 1 ? 'assets/mcolor.png' : 'assets/message.png',
              height: 25,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              _currentIndex == 2 ? 'assets/add.png' : 'assets/add.png',
              height: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: "Follow",
            icon: Image.asset(
              _currentIndex == 3
                  ? 'assets/blue.png'
                  : 'assets/smiley-happy-plus.png',
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Image.asset(
              _currentIndex == 4
                  ? 'assets/profileblue.png'
                  : 'assets/user-profile-02.png',
              height: 25,
            ),
          )
        ],
        backgroundColor: mainColor, // Set your desired background color here
        selectedItemColor: buttonColor, // Set the color for selected item
        unselectedItemColor:
            Colors.transparent, // Set the color for unselected items
      ),
    );
  }
}
