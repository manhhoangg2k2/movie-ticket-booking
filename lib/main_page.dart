import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_box/home_page/home_page.dart';
import 'package:ticket_box/movie_page/movie_page.dart';
import 'package:ticket_box/profile_page/profile_page.dart';
import 'package:ticket_box/ticket_page/ticket_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> _pageList = [
    HomePage(),
    TicketPage(),
    MoviePage(),
    ProfilePage()
  ];

  int _currentPageSelected = 0;

  void changeCurrentTap(value) {
    setState(() {
      _currentPageSelected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentPageSelected],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => changeCurrentTap(value),
        selectedItemColor: Colors.amber.shade300,
        currentIndex: _currentPageSelected,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity_rounded),
              label: "Ticket",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: "Movie",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: "Profile",
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
