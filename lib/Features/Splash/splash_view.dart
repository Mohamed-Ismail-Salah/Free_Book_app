import 'package:book_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            logoPath,
            height: 150,
            width: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: AnimatedTextKit(
              onFinished: () {
                GoRouter.of(context).push(AppRouter.kHome);
              },
              pause: const Duration(milliseconds: 200),
              totalRepeatCount: 1,
              animatedTexts: [
                WavyAnimatedText('Read  For  Free',
                    textStyle:
                        const TextStyle(fontFamily: logoFont, fontSize: 30)),
              ],
              repeatForever: false,
            ),
          ),
        ],
      ),
    );
  }
}
