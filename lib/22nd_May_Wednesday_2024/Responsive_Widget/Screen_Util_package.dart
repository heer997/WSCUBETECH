import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Set Orientation in only Portrait Mode as shown below:
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    /// Set Orientation in only Landscape Mode as shown below:
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeLeft,
    //   DeviceOrientation.landscapeRight,
    // ]);
    return ScreenUtilInit(
      child: MaterialApp(
        title: "Screen Util Package",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.grey,
            centerTitle: true,
          ),
        ),
        home: const ScreenUtilPackageTutorialTask(),
      ),
    );
  }
}

class ScreenUtilPackageTutorialTask extends StatefulWidget {
  const ScreenUtilPackageTutorialTask({super.key});

  @override
  State<ScreenUtilPackageTutorialTask> createState() {
    return ScreenUtilPackageTutorialTaskState();
  }
}

class ScreenUtilPackageTutorialTaskState
    extends State<ScreenUtilPackageTutorialTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Screen Util Package",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0.sp),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 8.0,
              child: Container(
                height: 200.h,
                width: 200.w,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
