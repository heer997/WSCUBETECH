import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MediaQuery",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const MediaQueryTutorialTask(),
    );
  }
}

class MediaQueryTutorialTask extends StatefulWidget {
  const MediaQueryTutorialTask({super.key});

  @override
  State<MediaQueryTutorialTask> createState() {
    return MediaQueryTutorialTaskState();
  }
}

class MediaQueryTutorialTaskState extends State<MediaQueryTutorialTask> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "MediaQuery",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: height * 0.5,
            width: width * 0.2,
            color: Colors.blue,
          ),
        ));
  }
}
