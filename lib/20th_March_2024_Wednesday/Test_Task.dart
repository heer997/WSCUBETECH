import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UI Task",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: Colors.grey, centerTitle: true),
      ),
      home: const TaskUi(),
    );
  }
}

class TaskUi extends StatelessWidget {
  const TaskUi({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 360.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 100.0),
                  const SearchBar(),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 11.0, bottom: 11.0),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Best of the month",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 11.0),
                        Container(
                          width: 130.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.0),
                              color: Colors.blue),
                        ),
                        const SizedBox(width: 20.0),
                        Container(
                          width: 130.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.0),
                            color: Colors.brown,
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Container(
                          width: 130.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.0),
                            color: Colors.teal,
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Container(
                          width: 130.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.0),
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    padding: const EdgeInsets.all(11.0),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "The color tone",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 11.0),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.0),
                            color: Colors.brown,
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.0),
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.0),
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.0),
                            color: Colors.blueGrey,
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.0),
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.0),
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(11.0),
                    child: const Text(
                      "Categories",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 160.0,
                            height: 80.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.0),
                            ),
                            child: Image.asset("assets/images/Lord-Hanuman.jpg",
                                fit: BoxFit.cover),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40.0, top: 30.0),
                            child: Text(
                              "Hanuman",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20.0),
                      Stack(
                        children: [
                          Container(
                            width: 160.0,
                            height: 80.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.0),
                            ),
                            child: Image.asset("assets/images/strawberry.png",
                                fit: BoxFit.cover),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40.0, top: 30.0),
                            child: Text(
                              "Strawberry",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 160.0,
                            height: 80.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.0),
                            ),
                            child: Image.asset(
                                "assets/images/Business_Meeting_photo.jpg",
                                fit: BoxFit.cover),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40.0, top: 30.0),
                            child: Text(
                              "Meeting",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20.0),
                      Stack(
                        children: [
                          Container(
                            width: 160.0,
                            height: 80.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.0),
                            ),
                            child: Image.asset(
                                "assets/images/Natural_image.jpg",
                                fit: BoxFit.cover),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40.0, top: 30.0),
                            child: Text(
                              "Nature",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.0,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(11.0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.grey,
          hintText: "Find Wallpapers",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11.0),
          ),

          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
