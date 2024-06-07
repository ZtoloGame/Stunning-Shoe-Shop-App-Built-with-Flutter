import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoes_store/pages/cart_page.dart';
import 'package:shoes_store/pages/favory_page.dart';
import 'package:shoes_store/pages/home_page.dart';
import 'package:shoes_store/pages/profile.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
    int _selectedIndex = 0;
List pages = [
  homepage(),
  favory(),
  cart(),
  profile(),
];

  
  void changepage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _updateAppbar();
    super.initState();
  }

  void _updateAppbar() {
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }
  
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF172645),
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color(0xFF4eabe3),
        onTap: changepage,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 30,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,size: 30,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Badge(
              label: Text('1'),
              textColor: Colors.white,
              backgroundColor: _selectedIndex != 2 ? Color(0xFF4eabe3):Colors.red,
              child: Icon(Icons.shopping_bag,size: 30,)
              ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined,size: 30,),
            label: '',
          ),
        ],
      ),
    );
  }
}