import "dart:async";
import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:wscube_tech/8th_April_2024_Monday/HomeScreen.dart";
import "package:wscube_tech/8th_April_2024_Monday/Shared_preferences.dart";

class SplashScreenEighth extends StatefulWidget {
  const SplashScreenEighth({super.key});

  @override
  State<SplashScreenEighth> createState() {
    return SplashScreenEighthState();
  }
}

class SplashScreenEighthState extends State<SplashScreenEighth> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () async {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        bool? value = preferences.getBool("login");

        if (value != null) {
          if (value) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomeScreenShared();
                },
              ),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const LoginScreenShared();
                },
              ),
            );
          }
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const LoginScreenShared();
              },
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Splash Screen",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
