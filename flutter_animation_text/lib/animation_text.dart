import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimationText extends StatefulWidget {
  const AnimationText({super.key});

  @override
  State<AnimationText> createState() => _AnimationTextState();
}

class _AnimationTextState extends State<AnimationText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Text'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 300,
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        FadeAnimatedText('AWESOE'),
                        FadeAnimatedText('OPTIMISTIC'),
                        FadeAnimatedText('DIFFERENT'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: 300,
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  const Text(
                    "Be",
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(animatedTexts: [
                      RotateAnimatedText('AWESOME'),
                      RotateAnimatedText('OPTIMISTIC'),
                      RotateAnimatedText('DIFFERENT'),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
