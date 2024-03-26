import "package:flutter/material.dart";
import "package:wscube_tech/21th_March_2024_Thursday/Splash_Screen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CounterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class CounterAppPractice extends StatefulWidget {
  const CounterAppPractice({super.key});

  @override
  State<CounterAppPractice> createState() {
    return CounterAppPracticeState();
  }
}

class CounterAppPracticeState extends State<CounterAppPractice> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Counter App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$count",
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count++;
              },);
            },
            heroTag: "First",
            backgroundColor: Colors.blue,
            child: const Icon(Icons.add, size: 30.0, color: Colors.white),
          ),
          const SizedBox(width: 20.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count--;
              },);
            },
            heroTag: "Second",
            backgroundColor: Colors.brown,
            child: const Icon(Icons.remove, size: 30.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
