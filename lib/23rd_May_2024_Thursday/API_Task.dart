import "dart:convert";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Music API",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const MusicAPiTaskTutorial(),
    );
  }
}

class MusicAPiTaskTutorial extends StatefulWidget {
  const MusicAPiTaskTutorial({super.key});

  @override
  State<MusicAPiTaskTutorial> createState() {
    return MusicAPiTaskTutorialState();
  }
}

class MusicAPiTaskTutorialState extends State<MusicAPiTaskTutorial> {
  @override
  void initState() {
    super.initState();
    fetchModel();
  }

  Future<List<ModelDemo>> fetchModel() async {
    final response = await http.get(
      Uri.parse("https://rapidapi.com/category/Music"),
      headers: {
        "Content-Type" : "application/json",
      },
    );

    if (response.statusCode == 200) {
      Iterable jsonResponse = jsonDecode(response.body);
      List<ModelDemo> dataInputs = jsonResponse.map(
        (model) {
          return ModelDemo.fromJson(model);
        },
      ).toList();
      return dataInputs;
    } else {
      throw Exception("Failed to load Model");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Music API",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchModel(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ModelDemo>? data = snapshot.data;
              return ListView.builder(
                itemCount: data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(data[index].id.toString()),
                      subtitle: Column(
                        children: <Widget>[
                          Text(data[index].title),
                          Text(data[index].url),
                        ],
                      ),
                      trailing: Text(data[index].albumId.toString()),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("Error : ${snapshot.error}");
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

class ModelDemo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  ModelDemo(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory ModelDemo.fromJson(Map<String, dynamic> json) {
    return ModelDemo(
      albumId: json["albumId"],
      id: json["id"],
      title: json["title"],
      url: json["url"],
      thumbnailUrl: json["thumbnailUrl"],
    );
  }
}
