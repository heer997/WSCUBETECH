import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Clean Login UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal.shade300,
          centerTitle: true,
        ),
      ),
      home: const MobileUI4(),
    );
  }
}

class MobileUI4 extends StatelessWidget {
  const MobileUI4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.teal.shade300,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.0,
                child: Text(
                  "GO",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade300,
                      fontSize: 80.0),
                ),
              ),
              const Row(
                children: [
                  SizedBox(width: 230.0),
                  CircleAvatar(radius: 30.0),
                ],
              ),
              const Row(
                children: [
                  SizedBox(width: 200.0),
                  CircleAvatar(radius: 10.0),
                ],
              ),
              const SizedBox(height: 100.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(350.0, 50.0),
                ),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.teal),
                ),
              ),
              const SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RegisterPage();
                      },
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal.shade300,
                  fixedSize: const Size(350.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: const BorderSide(color: Colors.white),
                  ),
                ),
                child: const Text(
                  "REGISTER",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.clear, color: Colors.white),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        body: Center(
          child: SizedBox(
            width: 350.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.teal.shade300,
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 34.0),
                  ),
                ),
                const SizedBox(height: 60.0),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 10.0),
                      child: Icon(Icons.email, color: Colors.teal.shade300),
                    ),
                    hintText: "EMAIL",
                    hintStyle: TextStyle(color: Colors.teal.shade300),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.teal.shade300, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.teal.shade300, width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 10.0),
                      child: Icon(Icons.lock, color: Colors.teal.shade300),
                    ),
                    hintText: "PASSWORD",
                    hintStyle: TextStyle(color: Colors.teal.shade300),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.teal.shade300, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.teal.shade300, width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 60.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade300,
                    fixedSize: const Size(350.0, 50.0),
                  ),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.clear, color: Colors.white),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
        ),
        body: Center(
          child: SizedBox(
            width: 350.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.teal.shade300,
                  child: const Column(
                    children: [
                      Text(
                        "REGI",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white),
                      ),
                      Text(
                        "STER",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 60.0),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "DISPLAY NAME",
                    hintStyle: TextStyle(color: Colors.teal.shade300),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 10.0),
                      child: Icon(FontAwesomeIcons.solidUser,
                          size: 20.0, color: Colors.teal.shade300),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.teal.shade300, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.teal.shade300, width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "EMAIL",
                    hintStyle: TextStyle(color: Colors.teal.shade300),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 10.0),
                      child: Icon(Icons.email, color: Colors.teal.shade300),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.teal.shade300, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.teal.shade300, width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "PASSWORD",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 10.0),
                      child: Icon(Icons.lock, color: Colors.teal.shade300),
                    ),
                    hintStyle: TextStyle(color: Colors.teal.shade300),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.teal.shade300, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.teal.shade300, width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 60.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade300,
                    fixedSize: const Size(350.0, 50.0),
                  ),
                  child: const Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
