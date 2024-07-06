import 'package:flutter/material.dart';
import 'package:flutter_animation_text/widgets/favorite.dart';
import 'package:flutter_animation_text/widgets/home.dart';
import 'package:flutter_animation_text/widgets/profile.dart';
import 'package:flutter_animation_text/widgets/setting.dart';

class BottomNavigationFlutter extends StatefulWidget {
  const BottomNavigationFlutter({super.key});

  @override
  State<BottomNavigationFlutter> createState() =>
      _BottomNavigationFlutterState();
}

class _BottomNavigationFlutterState extends State<BottomNavigationFlutter> {
  int currentIndex = 0;

  List pages = [
    const Home(),
    const FavoriteScrenn(),
    const SettingScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bottom Navigation Flutter"),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 25,
                offset: const Offset(20, 8)),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2), label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Setting"),
            ],
          ),
        ),
      ),
    );
  }
}
