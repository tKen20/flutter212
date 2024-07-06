import 'package:flutter/material.dart';

class SteeperFlutter extends StatefulWidget {
  const SteeperFlutter({super.key});

  @override
  State<SteeperFlutter> createState() => _SteeperFlutterState();
}

class _SteeperFlutterState extends State<SteeperFlutter> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Flutter"),
      ),
      body: SafeArea(
        child: Center(
          child: Stepper(
            onStepTapped: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            currentStep: _currentIndex,
            onStepContinue: () {
              if (_currentIndex != 2) {
                setState(() {
                  _currentIndex += 1;
                });
              }
            },
            onStepCancel: () {
              if (_currentIndex != 0) {
                setState(() {
                  _currentIndex -= 1;
                });
              }
            },
            steps: [
              Step(
                title: Text("Step 1"),
                content: Text("Welcome to App"),
              ),
              Step(
                title: Text("Step 2"),
                content: Text("Welcome to App"),
              ),
              Step(
                title: Text("Step 3"),
                content: Text("Welcome to App"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
