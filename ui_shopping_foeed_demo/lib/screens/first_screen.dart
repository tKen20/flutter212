import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_shopping_foeed_demo/screens/home_page.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Lottie.asset("assets/animation/Animation - 1720521351829.json",
              fit: BoxFit.cover),
          const Text(
            "Fast delievery at \n your doorstep",
            style: const TextStyle(
              height: 1.2,
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Home delievery and online reservation \n system for rstaurants & cafe",
            style: const TextStyle(
              height: 1.2,
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 200,
          ),
          Container(
            width: double.infinity,
            height: 55,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
              },
              child: const Text(
                "Let's Explore",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
