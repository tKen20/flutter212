import 'package:flutter/material.dart';

class LocationScreens extends StatefulWidget {
  const LocationScreens({super.key});

  @override
  State<LocationScreens> createState() => _LocationScreensState();
}

class _LocationScreensState extends State<LocationScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("location"),
      ),
    );
  }
}
