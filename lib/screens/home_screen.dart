import 'package:flutter/material.dart';
import 'package:hotel/screens/tabs/fav_tab.dart';
import 'package:hotel/screens/tabs/home_tab.dart';
import 'package:hotel/screens/tabs/messages_tab.dart';
import 'package:hotel/screens/tabs/profile_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List tabs = [
    const HomeTab(),
    const FavTab(),
    const MessagesTab(),
    const ProfileTab(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
              child: tabs[_currentIndex])),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontFamily: 'Bold', fontSize: 10),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Bold', fontSize: 10),
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey[400],
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex != 0
                ? const Icon(Icons.home_outlined)
                : const Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex != 1
                ? const Icon(Icons.favorite_border)
                : const Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex != 2
                ? const Icon(Icons.email_outlined)
                : const Icon(Icons.email_rounded),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex != 3
                ? const Icon(Icons.account_circle_outlined)
                : const Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
