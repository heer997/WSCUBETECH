import "package:flutter/material.dart";
import "package:wscube_tech/22nd_May_Wednesday_2024/Responsive_Widget/Orientation/landscape.dart";
import "package:wscube_tech/22nd_May_Wednesday_2024/Responsive_Widget/Orientation/portrait.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout builder",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const LayoutBuilderTaskTutorial(),
    );
  }
}

class LayoutBuilderTaskTutorial extends StatefulWidget {
  const LayoutBuilderTaskTutorial({super.key});

  @override
  State<LayoutBuilderTaskTutorial> createState() {
    return LayoutBuilderTaskTutorialState();
  }
}

class LayoutBuilderTaskTutorialState extends State<LayoutBuilderTaskTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double availableheight = constraints.maxHeight;
          double availablewidth = constraints.maxWidth;

          if (availablewidth > 300) {
            return const LandScape();
          } else {
            return const Portrait();
          }
        },
      ),
    );
  }
}
