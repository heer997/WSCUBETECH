import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Card Container Stack",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const CardContainerStack(),
    );
  }
}

class CardContainerStack extends StatelessWidget {
  const CardContainerStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Scrollable Containers",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 2700.0,
                width: 500.0,
                child: Stack(
                  children: [
                    UiHelper.customContainer(
                      color: Colors.blue,
                    ),
                    Positioned(
                      top: 100.0,
                      left: 50.0,
                      child: UiHelper.customContainer(
                        color: Colors.brown,
                      ),
                    ),
                    Positioned(
                      top: 200.0,
                      left: 100.0,
                      child: UiHelper.customContainer(
                        color: Colors.teal,
                      ),
                    ),
                    Positioned(
                      top: 300.0,
                      left: 150.0,
                      child: UiHelper.customContainer(
                        color: Colors.yellow,
                      ),
                    ),
                    Positioned(
                      top: 400.0,
                      left: 200.0,
                      child: UiHelper.customContainer(
                        color: Colors.purple,
                      ),
                    ),
                    Positioned(
                      top: 500.0,
                      left: 150.0,
                      child: UiHelper.customContainer(
                        color: Colors.orange,
                      ),
                    ),
                    Positioned(
                      top: 600.0,
                      left: 100.0,
                      child: UiHelper.customContainer(
                        color: Colors.deepPurple,
                      ),
                    ),
                    Positioned(
                      top: 700.0,
                      left: 50.0,
                      child: UiHelper.customContainer(
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      top: 800.0,
                      child: UiHelper.customContainer(
                        color: Colors.green,
                      ),
                    ),
                    Positioned(
                      top: 900.0,
                      left: 50.0,
                      child: UiHelper.customContainer(
                        color: Colors.blueGrey,
                      ),
                    ),
                    Positioned(
                      top: 1000.0,
                      left: 100.0,
                      child: UiHelper.customContainer(
                        color: Colors.brown,
                      ),
                    ),
                    Positioned(
                      top: 1100.0,
                      left: 150.0,
                      child: UiHelper.customContainer(
                        color: Colors.cyan,
                      ),
                    ),
                    Positioned(
                      top: 1200.0,
                      left: 200.0,
                      child: UiHelper.customContainer(
                        color: Colors.lightGreen,
                      ),
                    ),
                    Positioned(
                      top: 1300.0,
                      left: 150.0,
                      child: UiHelper.customContainer(
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      top: 1400.0,
                      left: 100.0,
                      child: UiHelper.customContainer(
                        color: Colors.blue,
                      ),
                    ),
                    Positioned(
                      top: 1500.0,
                      left: 50.0,
                      child: UiHelper.customContainer(
                        color: Colors.limeAccent,
                      ),
                    ),
                    Positioned(
                      top: 1600.0,
                      child: UiHelper.customContainer(
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      top: 1700.0,
                      left: 50.0,
                      child: UiHelper.customContainer(
                        color: Colors.grey,
                      ),
                    ),
                    Positioned(
                      top: 1800.0,
                      left: 100.0,
                      child: UiHelper.customContainer(
                        color: Colors.cyanAccent,
                      ),
                    ),
                    Positioned(
                      top: 1900.0,
                      left: 150.0,
                      child: UiHelper.customContainer(
                        color: Colors.deepPurple,
                      ),
                    ),
                    Positioned(
                      top: 2000.0,
                      left: 200.0,
                      child: UiHelper.customContainer(
                        color: Colors.pink,
                      ),
                    ),
                    Positioned(
                      top: 2100.0,
                      left: 150.0,
                      child: UiHelper.customContainer(
                        color: Colors.black54,
                      ),
                    ),
                    Positioned(
                      top: 2200.0,
                      left: 100.0,
                      child: UiHelper.customContainer(
                        color: Colors.greenAccent,
                      ),
                    ),
                    Positioned(
                      top: 2300.0,
                      left: 50.0,
                      child: UiHelper.customContainer(
                        color: Colors.amber,
                      ),
                    ),
                    Positioned(
                      top: 2400.0,
                      child: UiHelper.customContainer(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UiHelper {
  static customContainer({required Color color}) {
    return Card(
      elevation: 20.0,
      child: Container(
        height: 200.0,
        width: 200.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(11.0),
        ),
      ),
    );
  }
}
