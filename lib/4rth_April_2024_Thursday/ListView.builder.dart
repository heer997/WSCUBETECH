import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView.builder",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const BuilderPractice(),
    );
  }
}

class BuilderPractice extends StatefulWidget {
  const BuilderPractice({super.key});

  @override
  State<BuilderPractice> createState() {
    return BuilderPracticeState();
  }
}

class BuilderPracticeState extends State<BuilderPractice> {
  var Numbers = [
    "First",
    "Second",
    "Third",
    "Fourth",
    "Fifth",
    "Sixth",
    "Seventh",
    "Eighth",
    "Ninth",
    "Tenth"
  ];

  var images = [
    "assets/images/apple.png",
    "assets/images/apple-icon.webp",
    "assets/images/Business_Meeting_photo.jpg",
    "assets/images/facebook.jpg",
    "assets/images/Flutter_Logo.png",
    "assets/images/geeksforgeeks.png",
    "assets/images/google.jpg",
    "assets/images/Lord-Hanuman.jpg",
    "assets/images/Natural_image.jpg",
    "assets/images/part_of_login_screen_Figma_Community.png",
    "assets/images/strawberry.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView. builder",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Numbers.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(images[index]),
                  ),
                  title: Text(
                    Numbers[index],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(Numbers[index]),
                  trailing: const Icon(Icons.arrow_forward),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
