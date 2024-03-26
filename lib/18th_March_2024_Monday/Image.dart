import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Image",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(color: Colors.grey, centerTitle: true),
      ),
      home: const ImageDemo(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Image",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      Text(
                        "Flutter Development",
                        style:
                            TextStyle(fontFamily: "FontsTwo", fontSize: 40.0),
                      ),
                      Text(
                        "Mobile App Development",
                        style:
                            TextStyle(fontFamily: "FontsFive", fontSize: 40.0),
                      ),
                      Text(
                        "Cross Platform",
                        style:
                            TextStyle(fontFamily: "FontsSix", fontSize: 40.0),
                      ),
                    ],
                  ),
                  const SizedBox(width: 50.0),
                  Image.asset("assets/images/Flutter_Logo.png"),
                ],
              ),
              const SizedBox(height: 40.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Lord Hanuman",
                        style:
                            TextStyle(fontFamily: "FontsOne", fontSize: 40.0),
                      ),
                      Text(
                        "Jay Hanuman",
                        style:
                            TextStyle(fontFamily: "FontsFour", fontSize: 40.0),
                      ),
                      Text(
                        "Jay Kashthbhanjan Dev",
                        style: TextStyle(fontFamily: "FontsSeven", fontSize: 40.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 50.0),
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/Lord-Hanuman.jpg"),
                    radius: 100.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
