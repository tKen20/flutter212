import 'package:flutter/material.dart';

class ProfileScreens extends StatefulWidget {
  const ProfileScreens({super.key});

  @override
  State<ProfileScreens> createState() => _ProfileScreensState();
}

class _ProfileScreensState extends State<ProfileScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(20, (index) {
          return Center(
            child: Container(
              margin: EdgeInsets.all(8.0),
              color: Colors.blue,
              height: 100,
              child: Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
