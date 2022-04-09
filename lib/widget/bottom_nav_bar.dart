// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_final_fields
 
import 'package:flutter/material.dart';

import '../model/all-book.dart';
import '../screen/cart.dart';
import '../screen/library.dart';
import '../screen/profile.dart';
import 'tabBar/tab_bar.dart';

class bottomNavBar extends StatefulWidget {
  
  const bottomNavBar({Key? key, }) : super(key: key);

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
      
    Tabbar(),

    LibraryPage(),
    CartPage(),
    ProfilePage(),
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
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icon/home1.png"),
               
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icon/library.png"),
                
              ),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icon/cart.png"),
                
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icon/profile.png"),
                //color: Color(0xFF3A5A98),
              ),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          unselectedItemColor: Color.fromARGB(255, 104, 103, 103),
          selectedItemColor: Color(0xff0D964C),
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}

