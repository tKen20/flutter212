import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:onboarding_screen_flutter/onboarding_screen/home_screens.dart';

class LottiesScreen extends StatefulWidget {
  const LottiesScreen({super.key});

  @override
  State<LottiesScreen> createState() => _LottiesScreenState();
}

class _LottiesScreenState extends State<LottiesScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 10),
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreens(),
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Lottie.asset(
          //     "https://lottie.host/412d97ee-2445-498d-8b90-a5cd5d7db3e6/V5BMgJI3WL.json"),

          Lottie.asset("assets/animations/Animation - 1720449584599.json"),
        ],
      ),
    );
  }
}
