import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row Column",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const RowColumn(),
    );
  }
}

class RowColumn extends StatefulWidget {

  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  var count = 0;

  var count2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Row and Column",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.brown,
              child: Center(
                child: Text(
                  "$count",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.teal,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            ),
            Row(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.brown,
                  child: Center(
                    child: Text(
                      "$count2",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.teal,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count++;
              },);
            },
            backgroundColor: Colors.blue,
            child: const Icon(Icons.add, color: Colors.white, size: 30.0),
          ),
          const SizedBox(width: 20.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count--;
              },);
            },
            backgroundColor: Colors.brown,
            child: const Icon(Icons.remove, color: Colors.white, size: 30.0),
          ),
          const SizedBox(width: 20.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count2++;
              },);
            },
            backgroundColor: Colors.teal,
            child: const Icon(Icons.add, color: Colors.white, size: 30.0),
          ),
          const SizedBox(width: 20.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count2--;
              },);
            },
            backgroundColor: Colors.purple,
            child: const Icon(Icons.remove, color: Colors.white, size: 30.0),
          ),
        ],
      ),
    );
  }
}
