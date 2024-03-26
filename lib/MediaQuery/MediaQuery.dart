import "package:flutter/material.dart";

/// MediaQuery : you can get information about the current device size, as well as user preferences,
/// and design your layout accordingly. MediaQuery provides a higher-level view of the current app’s screen size
/// and can also give more detailed information about the device and its layout preferences.
/// In practice, MediaQuery is always there. It can simply be accessed by calling MediaQuery.of in the build method.
/// From there you can look up all sorts of interesting information about the device you’re running on,
/// like the size of the screen, and build your layout accordingly.
/// MediaQuery can also be used to check the current device’s orientation or can be used to check
/// if the user has modified the default font size. It can also be used to determine
/// if parts of the screen are obscured by a system UI, similar to a safe area widget.
/// Using mediaQuery.of automatically causes the widgets to rebuild themselves according to the current device sizes and
/// layout preferences every time they change.

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
        appBarTheme: const AppBarTheme(color: Colors.grey, centerTitle: true),
      ),
      home: const MediaDemo(),
    );
  }
}

class MediaDemo extends StatelessWidget {
  const MediaDemo({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("MediaQuery in Flutter"),
    //   ),
    //   body: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //         width: mediaQuery.size.width * 0.3,
    //         height: mediaQuery.size.height * 0.5,
    //
    //         color: Colors.purple,
    //       ),
    //       Container(
    //         width: mediaQuery.size.width * 0.7,
    //         color: Colors.yellow,
    //       ),
    //     ],
    //   ),
    // );

    return Scaffold(
      ///   Usage of Orientation with "Builder"
      // body: Builder(
      //   builder: (context) {
      //     if (mediaQuery.orientation == Orientation.portrait) {
      //       return portraitWidget(mediaQuery.size);
      //     } else {
      //       return landscapeWidget(mediaQuery.size);
      //     }
      //   },
      // ),

      ///   Usage of "OrientationBuilder"
      body: OrientationBuilder(
        builder: (context, orientation) {
          if(mediaQuery.orientation == Orientation.portrait)
            {
              return portraitWidget(mediaQuery.size);
            }
          else
            {
              return landscapeWidget(mediaQuery.size);
            }
        },
      ),
    );
  }

  Widget portraitWidget(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: const BoxDecoration(
          color: Colors.purple,
        ),
        child: const Center(
          child: Text(
            "Portrait",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget landscapeWidget(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: const BoxDecoration(
          color: Colors.yellow,
        ),
        child: const Center(
          child: Text(
            "Landscape",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}
