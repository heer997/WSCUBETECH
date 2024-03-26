import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MediaQuery Example",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const MediaQueryExample(),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MediaQuery",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      /// Simple MediaQuery
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     Container(
      //       width: MediaQuery.of(context).size.width * 0.3,
      //       height: MediaQuery.of(context).size.height * 0.5,
      //       decoration: const BoxDecoration(
      //         color: Colors.red,
      //       ),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width * 0.3,
      //       decoration: const BoxDecoration(
      //         color: Colors.blue,
      //       ),
      //     ),
      //   ],
      // ),


      /// MediaQuery with OrientationBuilder
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return portrait();
          } else {
            return landscape();
          }
        },
      ),
    );
  }

  Widget portrait() {
    return const Center(
      child: Text(
        "Portrait",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
      ),
    );
  }

  Widget landscape() {
    return const Center(
      child: Text("Landscape", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),),
    );
  }
}
