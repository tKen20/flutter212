import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen_flutter/onboarding_screen/home_screens.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onDone(context) async {
      final pref = await SharedPreferences.getInstance();

      // kiem tra va gan gia tri cho bien isShow
      pref.setBool("ON BOARDING", true);

      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreens(),
      ));
    }

    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Title of introduction page",
            body: "Welcome to the app! This is a description of how it works.",
            image: Image.asset("assets/images/11b.png"),
            decoration: PageDecoration(
              pageColor: Colors.blue[200],
              titleTextStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PageViewModel(
            title: "Title of introduction page",
            body: "Welcome to the app! This is a description of how it works.",
            image: Image.asset("assets/images/11.png"),
            decoration: PageDecoration(
              pageColor: Colors.blue[200],
              titleTextStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PageViewModel(
            title: "Title of introduction page",
            body: "Welcome to the app! This is a description of how it works.",
            image: Image.asset("assets/images/111.png"),
            decoration: PageDecoration(
              pageColor: Colors.blue[200],
              titleTextStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        dotsDecorator: const DotsDecorator(
          size: Size(10, 10),
          activeColor: Colors.black,
        ),
        showDoneButton: true,
        done: const Text("Done"),
        showNextButton: true,
        next: const Icon(Icons.keyboard_arrow_right_rounded),
        showSkipButton: true,
        skip: const Text("Skip"),
        onDone: () => onDone(context),
      ),
    );
  }
}
