import "dart:developer";
import "package:flutter/material.dart";

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const CounterApp(),
    );
  }
}
class CounterApp extends StatefulWidget
{
  const CounterApp({super.key});
  @override
  State<CounterApp> createState()
  {
    return CounterAppState();
  }
}
class CounterAppState extends State<CounterApp>
{
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$count", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),),
            const SizedBox(height: 40.0),
            const Text("Counter Value", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
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
                log(count.toString());
              },);
            },
            backgroundColor: Colors.blue,
            child: const Icon(Icons.add, size: 30.0, color: Colors.white),
          ),
          const SizedBox(width: 20.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count--;
                log(count.toString());
              },);
            },
            backgroundColor: Colors.blue,
            child: const Icon(Icons.remove, size: 30.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}