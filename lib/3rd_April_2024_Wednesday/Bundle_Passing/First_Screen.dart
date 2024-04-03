import "package:flutter/material.dart";
import "package:wscube_tech/3rd_April_2024_Wednesday/Bundle_Passing/Second_Screen.dart";
import "package:wscube_tech/3rd_April_2024_Wednesday/Custom_Widget_ui.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First Screen Bundle Passing",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() {
    return FirstScreenState();
  }
}

class FirstScreenState extends State<FirstScreen> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style:
                  const TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40.0),
            UiHelper2.customElevatedButton(
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SecondScreen(count2: count);
                    },
                  ),
                );
              },
              text: "Go to Next Page",
              color: Colors.blue,
              size: const Size(300.0, 50.0),
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          UiHelper2.customFloatingActionButton(
            callback: () {
              setState(
                () {
                  count++;
                },
              );
            },
            widget: "First",
            color: Colors.blue,
            icon: const Icon(Icons.add, color: Colors.white, size: 30.0),
          ),
          const SizedBox(width: 20.0),
          UiHelper2.customFloatingActionButton(
            callback: () {
              setState(
                () {
                  count--;
                },
              );
            },
            widget: "Second",
            color: Colors.brown,
            icon: const Icon(Icons.remove, color: Colors.white, size: 30.0),
          ),
        ],
      ),
    );
  }
}
