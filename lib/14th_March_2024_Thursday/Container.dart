import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container with CounterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const CounterAppCon(),
    );
  }
}

class CounterAppCon extends StatefulWidget {
  const CounterAppCon({super.key});

  @override
  State<CounterAppCon> createState() {
    return CounterAppConState();
  }
}

class CounterAppConState extends State<CounterAppCon> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CounterApp with Container",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300.0,
              height: 300.0,
              color: Colors.brown,
              child: Center(
                child: Text(
                  "$count",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60.0,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(
                () {
                  count++;
                },
              );
            },
            backgroundColor: Colors.blue,
            child: const Icon(Icons.add, size: 30.0, color: Colors.white),
          ),
          const SizedBox(width: 20.0),
          FloatingActionButton(
            onPressed: () {
              setState(
                () {
                  count--;
                },
              );
            },
            backgroundColor: Colors.brown,
            child: const Icon(Icons.remove, size: 30.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
