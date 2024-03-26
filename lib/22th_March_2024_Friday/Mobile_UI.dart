import "package:flutter/material.dart";
import "package:wscube_tech/22th_March_2024_Friday/UI.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mobile UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const MobileUI2(),
    );
  }
}

class MobileUI2 extends StatelessWidget {
  const MobileUI2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 350.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 150.0),
                Image.asset("assets/images/Business_Meeting_photo.jpg"),
                const SizedBox(height: 20.0),
                const Row(
                  children: [
                    SizedBox(width: 70.0),
                    Text(
                      "Welcome to",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 40.0, fontFamily: "FontsThree"),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(width: 100.0),
                    Text(
                      "SeekJob",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 40.0, fontFamily: "FontsThree"),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  width: 280.0,
                  child: Text(
                    "First, you have to Register.This is the login page ui."
                    " once you logged in then you will come to the home Screen as shown below."
                        " This is the Figma UI Image which is developed using Flutter",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
                const SizedBox(height: 70.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MobileUI();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: const Size(350.0, 50.0),
                    shape: const LinearBorder(),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400,
                    fixedSize: const Size(350.0, 50.0),
                    shape: const LinearBorder(),
                  ),
                  child: const Text("Register", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,
                    color: Colors.black,
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
