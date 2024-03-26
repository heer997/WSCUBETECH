import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task of Simple UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(
          color: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const SimpleUi(),
    );
  }
}

class SimpleUi extends StatelessWidget {
  const SimpleUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple UI"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(60.0, 0.0, 100.0, 0.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 4.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.tealAccent,width: 4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.fromLTRB(22.0, 0.0, 22.0, 0.0),
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: const Text(
                          "Strawberry Pavlova",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: const Text(
                            "Pavlova is a meringue-based\n dessert named after the Russian\n"
                            " ballerina Anna Pavlova.\n"
                            "Pavlova features a crisp crust and\n soft, light inside, topped with fruit\n"
                            " and whipped cream."),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            SizedBox(width: 20.0),
                            Text("170 Reviews"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: const Row(
                          children: [
                            Column(
                              children: [
                                Icon(Icons.present_to_all),
                                SizedBox(height: 10.0),
                                Text("PREP:"),
                                SizedBox(height: 10.0),
                                Text("25 min"),
                              ],
                            ),
                            SizedBox(width: 30.0),
                            Column(
                              children: [
                                Icon(Icons.timer),
                                SizedBox(height: 10.0),
                                Text("COOK:"),
                                SizedBox(height: 10.0),
                                Text("3 hr"),
                              ],
                            ),
                            SizedBox(width: 30.0),
                            Column(
                              children: [
                                Icon(Icons.feed_sharp),
                                SizedBox(height: 10.0),
                                Text("FEEDS:"),
                                SizedBox(height: 10.0),
                                Text("4-6"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 5.0),
                Image.asset("assets/images/strawberry.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
