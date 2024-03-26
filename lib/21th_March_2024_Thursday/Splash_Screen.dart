import "dart:async";
import "package:flutter/material.dart";
import "package:wscube_tech/21th_March_2024_Thursday/counterApp.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const CounterAppPractice();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Splash Screen",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            const SizedBox(height: 40.0),
            Image.asset("assets/images/Flutter_Logo.png"),
          ],
        ),
      ),
    );
  }
}
