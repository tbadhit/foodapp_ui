import 'package:flutter/material.dart';
import 'package:foods/ui/pages/food_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController(initialPage: 0);
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static List<Widget> _widgetOptions = <Widget>[
    FoodPage(),
    Text(
      'Notification',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          // Akhir membuat warna untuk jendela atas

          // TODO: Membuat warna dasar aplikasinya :
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),

          SafeArea(child: _widgetOptions.elementAt(selectedIndex)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 315,
              height: 70,
              margin: EdgeInsets.only(bottom: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  color: Color(0xffF6F7FB),
                  borderRadius: BorderRadius.circular(12)),
              child: GNav(
                rippleColor: Colors.grey[300],
                hoverColor: Colors.grey[100],
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Color(0xff11AC6A),
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.bell,
                    text: 'Notfication',
                  ),
                  GButton(
                    icon: LineIcons.heart,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'User',
                  )
                ],
                selectedIndex: selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
