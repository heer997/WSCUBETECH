import "package:flutter/material.dart";

class Portrait extends StatefulWidget {
  const Portrait({super.key});

  @override
  State<Portrait> createState() {
    return PortraitState();
  }
}

class PortraitState extends State<Portrait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Portrait",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Screen Height: ${MediaQuery.of(context).size.height}"),
            Text("Screen Width: ${MediaQuery.of(context).size.width}"),
          ],
        ),
      ),

      // body: const Center(
      //   child: Icon(Icons.portrait, size: 100.0),
      // ),
    );
  }
}
