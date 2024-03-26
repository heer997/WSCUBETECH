import "package:flutter/material.dart";

/// Stack Widget : A Widget that positions its children relative to the edges of its box.
/// This class is useful if you want to overlap several children in a simply way, for example having
/// some text and an image, overlaid with a gradient and a button attached to the bottom.
/// We can get Linear pattern from Column and Row.
/// We can get Relative pattern from Stack Widget.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack Button Navigation",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.blue, centerTitle: true),
      ),
      home: const StackButtonNavigation(),
    );
  }
}

class StackButtonNavigation extends StatelessWidget {
  const StackButtonNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stack Widget",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Stack widget will take the property of its children.
            SizedBox(
              width: 700.0,
              height: 1000.0,
              child: Stack(
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    color: Colors.grey,
                    child: const Text(
                      "1",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 50.0),
                    ),
                  ),
                  Positioned(
                    left: 50.0,
                    top: 50.0,
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.brown,
                      child: const Text(
                        "2",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 50.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100.0,
                    top: 100.0,
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.teal,
                      child: const Text(
                        "3",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 50.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 150.0,
                    top: 150.0,
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.purple,
                      child: const Text(
                        "4",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 50.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 200.0,
                    top: 200.0,
                    child: Stack(
                      children: [
                        Container(
                          width: 200.0,
                          height: 200.0,
                          color: Colors.orange,
                          child: const Text(
                            "5",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 50.0,
                            ),
                          ),
                        ),
                        Positioned(
                          child: SizedBox(
                            width: 120.0,
                            height: 120.0,
                            child:
                                Image.asset("assets/images/Lord-Hanuman.jpg"),
                          ),
                        ),
                        const Positioned(
                          top: 130.0,
                          child: Text(
                            "Jay Hanuman",
                            style: TextStyle(
                                fontFamily: "FontsTwo",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 150.0,
                    top: 370.0,
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.blueGrey,
                      child: const Text(
                        "6",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 50.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100.0,
                    top: 420.0,
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.deepPurple,
                      child: const Text(
                        "7",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 50.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50.0,
                    top: 470.0,
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.green,
                      child: const Text(
                        "8",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 50.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0.0,
                    top: 520.0,
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.black,
                      child: const Text(
                        "9",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 50.0,
                        ),
                      ),
                    ),
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
