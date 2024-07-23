import 'package:demo_shopping_app_ui/screens/cart_screens.dart';
import 'package:demo_shopping_app_ui/screens/home_screens.dart';
import 'package:demo_shopping_app_ui/screens/location_screens.dart';
import 'package:demo_shopping_app_ui/screens/profile_screens.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int currentIndex = 0;

  List pages = [
    HomeScreens(),
    ProfileScreens(),
    CartScreens(),
    LocationScreens(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //tieu de

      // body

      body: pages[currentIndex],

      //bottom navigator
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: GNav(
          onTabChange: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          textStyle:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          tabBackgroundColor: Colors.green.shade300,
          activeColor: Colors.white, // bieu tuong va mau van ban duoc chon
          padding: EdgeInsets.all(8),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
              iconSize: 30,
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
              iconSize: 30,
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: "Cart",
              iconSize: 30,
            ),
            GButton(
              icon: Icons.location_city,
              text: "Location",
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
