import 'package:flutter/material.dart';
import 'package:onboarding_screen_flutter/home_screens.dart';
import 'package:onboarding_screen_flutter/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isShow = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();

  // kiem tra va gan gia tri cho bien isShow
  isShow = pref.getBool("ON BOARDING") ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: isShow ? const OnboardingScreen() : const HomeScreens(),
    );
  }
}
