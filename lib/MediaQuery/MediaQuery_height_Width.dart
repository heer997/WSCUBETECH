import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MediaQuery Height Width",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: const Text(
        "MediaQuery Height Width",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height -
                      appbar.preferredSize.height) *
                  0.5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: const Center(
                  child: Text(
                "Demo App",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              )),
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                      appbar.preferredSize.height) *
                  0.5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: const Center(
                child: Icon(Icons.home, color: Colors.white, size: 30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
