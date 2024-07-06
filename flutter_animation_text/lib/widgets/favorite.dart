import 'package:flutter/material.dart';

class FavoriteScrenn extends StatefulWidget {
  const FavoriteScrenn({super.key});

  @override
  State<FavoriteScrenn> createState() => _FavoriteScrennState();
}

class _FavoriteScrennState extends State<FavoriteScrenn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: const Center(
        child: Text("Favorite"),
      )),
    );
  }
}
