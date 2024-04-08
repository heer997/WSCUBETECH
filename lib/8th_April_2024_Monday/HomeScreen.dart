import "package:flutter/material.dart";

class HomeScreenShared extends StatelessWidget {
  const HomeScreenShared({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Text(
          "Home Screen",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
        ),
      ),
    );
  }
}
