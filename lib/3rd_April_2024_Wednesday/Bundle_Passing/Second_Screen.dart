import "package:flutter/material.dart";
import "package:wscube_tech/3rd_April_2024_Wednesday/Custom_Widget_ui.dart";

class SecondScreen extends StatefulWidget {
  var count2 = 0;

  SecondScreen({super.key, required this.count2});

  @override
  State<SecondScreen> createState() {
    return SecondScreenState();
  }
}

class SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Second Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.count2.toString(),
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
            ),
            const SizedBox(height: 40.0),
            UiHelper2.customElevatedButton(
              callback: () {
                Navigator.pop(context);
              },
              text: "Go back",
              color: Colors.blue,
              size: const Size(300.0, 50.0),
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
