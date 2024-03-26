import "package:flutter/material.dart";
import "package:wscube_tech/22th_March_2024_Friday/Mobile_UI.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const MobileUI(),
    );
  }
}

class MobileUI extends StatelessWidget {
  const MobileUI({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 330.0,
              child: Column(
                children: [
                  const SizedBox(height: 100.0),
                  const Row(
                    children: [
                      SizedBox(width: 2.0),
                      Text(
                        "Let's Sign you in.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            fontFamily: "FontsThree"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                            fontSize: 22.0, color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    children: [
                      const SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        "You've been missed!",
                        style: TextStyle(
                            fontSize: 22.0, color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text("Username & Email"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username & Email",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text("Password"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye,
                          color: Colors.grey.shade400),
                      hintText: "Enter Password",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.0),
                        borderSide: BorderSide(color: Colors.grey.shade50),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  const Divider(color: Colors.grey),
                  const SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Image.asset("assets/images/Flutter_Logo.png",
                            height: 50.0, width: 50.0, fit: BoxFit.cover),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Image.asset("assets/images/geeksforgeeks.png",
                            height: 50.0, width: 50.0, fit: BoxFit.cover),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Image.asset("assets/images/Lord-Hanuman.jpg",
                            height: 50.0, width: 50.0, fit: BoxFit.cover),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 120.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      const SizedBox(width: 10.0),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return MobileUI2();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
