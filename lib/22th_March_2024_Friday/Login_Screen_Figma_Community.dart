import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Screen Figma Community",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const MobileUI3(),
    );
  }
}

class MobileUI3 extends StatelessWidget {
  const MobileUI3({super.key});

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
                  const SizedBox(height: 70.0),
                  Image.asset(
                      "assets/images/part_of_login_screen_Figma_Community.png"),
                  const SizedBox(height: 30.0),
                  const Row(
                    children: [
                      SizedBox(width: 2.0),
                      Text(
                        "Login Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.0, fontFamily: "FontsTen"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Username, email & phone number",
                      hintStyle: TextStyle(fontFamily: "FontsTen"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(fontFamily: "FontsTen"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    alignment: Alignment.centerRight,
                    child: const Text("Forgot Password ?", style: TextStyle(fontFamily: "FontsTen"),),
                  ),
                  const SizedBox(height: 30.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize: const Size(350.0, 50.0),
                      shape: const LinearBorder(),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.white,
                          fontFamily: "FontsTen"),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    "Or Sign up With",
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "FontsTen"),
                  ),
                  const SizedBox(height: 40.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage("assets/images/google.jpg"),
                      ),
                      SizedBox(width: 20.0),
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage:
                            AssetImage("assets/images/facebook.jpg"),
                      ),
                      SizedBox(width: 20.0),
                      CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/apple-icon.webp"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
