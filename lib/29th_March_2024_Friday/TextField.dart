import "dart:developer";

import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TextField",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: TextFieldPractice(),
    );
  }
}

class TextFieldPractice extends StatefulWidget {
  TextFieldPractice({super.key});

  @override
  State<TextFieldPractice> createState() => _TextFieldPracticeState();
}

class _TextFieldPracticeState extends State<TextFieldPractice> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  var _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TextField Practice",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: SizedBox(
            width: 350.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.account_box),
                    hintText: "Enter the username",
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.email),
                    hintText: "Enter the email",
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                TextField(
                  controller: passwordController,
                  obscureText: _obscureText,
                  maxLength: 5,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        },);
                      },
                      icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                    ),
                    hintText: "Enter the password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),
                ElevatedButton(
                  onPressed: () {
                    var username = usernameController.text;
                    var email = emailController.text;
                    var password = passwordController.text;

                    if(username == "" && email == "" && password == "")
                      {
                        print("Please enter the details");
                      }
                    else
                      {
                        log("Username is : $username");
                        log("Email is : $email");
                        log("Password is : $password");
                      }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(350.0, 50.0),
                  ),
                  child: const Text(
                    "Submit",
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
      ),
    );
  }
}
