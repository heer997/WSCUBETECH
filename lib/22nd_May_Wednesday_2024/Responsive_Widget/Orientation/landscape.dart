import "package:flutter/material.dart";

class LandScape extends StatefulWidget {
  const LandScape({super.key});

  @override
  State<LandScape> createState() {
    return LandScapeState();
  }
}

class LandScapeState extends State<LandScape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Landscape",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Screen Height : ${MediaQuery.of(context).size.height}"),
            Text("Screen Width: ${MediaQuery.of(context).size.width}"),
          ],
        ),
      ),

      // body: const Center(
      //   child: Icon(Icons.landscape, size: 100.0),
      // ),
    );
  }
}
