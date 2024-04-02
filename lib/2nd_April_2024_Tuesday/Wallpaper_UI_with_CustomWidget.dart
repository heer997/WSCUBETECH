import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:wscube_tech/2nd_April_2024_Tuesday/Custom_Widget.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wallpaper UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: CustomWallPaperUi(),
    );
  }
}

class CustomWallPaperUi extends StatelessWidget {
  CustomWallPaperUi({super.key});

  TextEditingController controller = TextEditingController();

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 80.0),
                  UiHelper.customTextFormField(
                    controller: controller,
                    hintText: "Find Wallpapers",
                    suffixIcon: const Icon(Icons.search),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Best of the month",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.customContainer(
                          color: Colors.blue,
                        ),
                        const SizedBox(width: 20.0),
                        UiHelper.customContainer(
                          color: Colors.brown,
                        ),
                        const SizedBox(width: 20.0),
                        UiHelper.customContainer(
                          color: Colors.teal,
                        ),
                        const SizedBox(width: 20.0),
                        UiHelper.customContainer(
                          color: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 35.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "The color tone",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        UiHelper.customContainer2(
                          color: Colors.brown,
                        ),
                        const SizedBox(width: 20.0),
                        UiHelper.customContainer2(
                          color: Colors.blue,
                        ),
                        const SizedBox(width: 20.0),
                        UiHelper.customContainer2(
                          color: Colors.black,
                        ),
                        const SizedBox(width: 20.0),
                        UiHelper.customContainer2(
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 20.0),
                        UiHelper.customContainer2(
                          color: Colors.orange,
                        ),
                        const SizedBox(width: 20.0),
                        UiHelper.customContainer2(
                          color: Colors.teal,
                        ),
                        const SizedBox(width: 20.0),
                        UiHelper.customContainer2(
                          color: Colors.deepPurple,
                        ),
                        const SizedBox(width: 20.0),
                        UiHelper.customContainer2(
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 35.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Categories",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.customContainer3(
                        image: "assets/images/Lord-Hanuman.jpg",
                        text: "Hanuman",
                      ),
                      const SizedBox(width: 20.0),
                      UiHelper.customContainer3(
                        image: "assets/images/strawberry.png",
                        text: "Strawberry",
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      UiHelper.customContainer3(
                        image: "assets/images/Business_Meeting_photo.jpg",
                        text: "Meeting",
                      ),
                      const SizedBox(width: 20.0),
                      UiHelper.customContainer3(
                        image: "assets/images/Natural_image.jpg",
                        text: "Nature",
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
