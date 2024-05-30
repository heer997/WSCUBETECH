import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:wscube_tech/8th_April_2024_Monday/HomeScreen.dart";
import "package:wscube_tech/8th_April_2024_Monday/Splash_Screen.dart";
import "package:wscube_tech/8th_April_2024_Monday/custom_Widget_LoginScreen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shared Preferences",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const SplashScreenEighth(),
    );
  }
}

class LoginScreenShared extends StatefulWidget {
  const LoginScreenShared({super.key});

  @override
  State<LoginScreenShared> createState() {
    return LoginScreenSharedState();
  }
}

class LoginScreenSharedState extends State<LoginScreenShared> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shared Preferences",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: SizedBox(
            width: 360.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelperShared.customTextFormField(
                  controller: emailController,
                  text: "Enter the Email",
                  text2: "Email",
                  iconData: Icons.email,
                ),
                const SizedBox(height: 30.0),
                UiHelperShared.customTextFormField(
                  controller: passwordController,
                  text: "Enter the password",
                  text2: "Password",
                  iconData: Icons.remove_red_eye,
                ),
                const SizedBox(height: 40.0),
                ElevatedButton(
                  onPressed: () {
                    saveLogin(emailController.text.toString(),
                        passwordController.text.toString());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(350.0, 50.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: const Text(
                    "Login",
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

  saveLogin(String email, String password) async {
    if (email == "" || password == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Enter required fields"),
        ),
      );
    } else {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setBool("login", true);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomeScreenShared();
          },
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Boolean value is set to True"),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }
}
