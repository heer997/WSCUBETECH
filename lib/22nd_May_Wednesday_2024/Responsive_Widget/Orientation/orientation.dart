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
      title: "Orientation",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const OrientationBuilderTutorialTask(),
    );
  }
}

class OrientationBuilderTutorialTask extends StatefulWidget {
  const OrientationBuilderTutorialTask({super.key});

  @override
  State<OrientationBuilderTutorialTask> createState() {
    return OrientationBuilderTutorialTaskState();
  }
}

class OrientationBuilderTutorialTaskState
    extends State<OrientationBuilderTutorialTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return const Portrait();
          } else {
            return const LandScape();
          }
        },
      ),

      /// Another way for OrientationBuilder
      // body: OrientationBuilder(
      //   builder: (context, orientation) {
      //     return Center(
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: <Widget>[
      //           orientation == Orientation.portrait
      //               ? const Icon(Icons.person, size: 80.0)
      //               : const Icon(Icons.email, size: 80.0),
      //         ],
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
