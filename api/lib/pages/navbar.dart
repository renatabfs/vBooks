// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:api/pages/favoritos.dart';
import 'package:api/pages/home_page.dart';
import 'package:api/pages/search_page.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 1;
  // ignore: unused_field
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Favoritos(),
    Home_page(),
    SearchPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: BottomNavigationBar(
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_rounded, size: 35),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, size: 35),
              label: "Início",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 35),
              label: "Pesquisar",
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff412f59),
          backgroundColor: Colors.transparent,
          unselectedItemColor: Color(0xff909090),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
