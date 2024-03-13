import 'package:cafe_park/src/screens/home_screen/home_screen_widget.dart';
import 'package:cafe_park/src/screens/menu_screen/menu_screen.dart';
import 'package:cafe_park/src/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pages = [
    const HomeScreenWidget(),
    const MenuScreen(),
    const ImageIcon(AssetImage('assets/images/Present.png')),
    const ProfileScreen(),
  ];

  int pageIndex = 0;
  void _pageSelect(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
      ),
      body: _pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _pageSelect,
        currentIndex: pageIndex,
        elevation: 7,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: const Color(0xff7A7A7A),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Document.png')),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Present.png')),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Profile-Fill.png')),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
