import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MediaQuery SafeArea Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: Colors.grey, centerTitle: true),
      ),
      home: MediaSafe(),
    );
  }
}

class MediaSafe extends StatelessWidget {
  MediaSafe({super.key});

  final ScrollController controller = ScrollController();

  List<Widget> layoutChildren(double boxSide) {
    return [
      Container(
        width: boxSide,
        height: boxSide,
        color: Colors.red,
        alignment: Alignment.center,
        child: const Text(
          "Text One",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25.0),
        ),
      ),
      Container(
        width: boxSide,
        height: boxSide,
        color: Colors.green,
        alignment: Alignment.center,
        child: const Text(
          "Text Two",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MediaQuery SafeArea",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      // body: Center(
      //   child: Container(
      //     child: Row(
      //       children: <Widget>[
      //         Container(
      //           width: size.width / 2,
      //           height: size.height / 2,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           width: size.width / 2,
      //           height: size.height / 2,
      //           color: Colors.blue,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),


      /// Using Builder with Orientation
      body: Center(
        // child: Builder(
        //   builder: (context) {
        //     if()
        //       {}
        //   },
        // ),
      ),
    );
  }
}
