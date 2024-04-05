import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ListViewPractice(),
    );
  }
}

class ListViewPractice extends StatelessWidget {
  const ListViewPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          UiHelper.customContainer(
            color: Colors.teal,
          ),
          const SizedBox(height: 20.0),
          UiHelper.customContainer(
            color: Colors.orange,
          ),
          const SizedBox(height: 20.0),
          UiHelper.customContainer(
            color: Colors.black,
          ),
          const SizedBox(height: 20.0),
          UiHelper.customContainer(
            color: Colors.indigo,
          ),
          const SizedBox(height: 20.0),
          UiHelper.customContainer(
            color: Colors.yellow,
          ),
          const SizedBox(height: 20.0),
          UiHelper.customContainer(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class UiHelper {
  static customContainer({required Color color}) {
    return Container(
      width: 100.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
