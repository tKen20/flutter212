import 'package:flutter/material.dart';
import 'package:ui_shopping_foeed_demo/screens/header_parts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],

      // main body
      body: ListView(
        children: [
          HeaderParts(),
        ],
      ),

      // bottom navigator
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          //color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 25,
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(20, 8),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: "Pay"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notification_important),
                  label: "Notification"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
            ],
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            currentIndex: _currentIndex,
          ),
        ),
      ),

      // body: Container(),
    );
  }
}
