import 'package:flutter/material.dart';
import 'package:login_app_flutter/pages/home.dart';
import 'package:login_app_flutter/pages/notif.dart';
import 'package:login_app_flutter/pages/status.dart';
import 'package:login_app_flutter/pages/user.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Daftar halaman yang ingin ditampilkan di Bottom Navigation Bar
    HomePage(),
    StatusPage(),
    NotifPage(),
    UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        selectedItemColor: Color.fromRGBO(111, 31, 173, 1),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 25,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
            ),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books_outlined,
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
