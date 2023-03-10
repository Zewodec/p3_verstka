import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Verstka',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Verstka project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.,  // Set Color of bg
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Wrap(spacing: 20, children: const [
            SizedBox(
              width: 70,
              height: 70,
              child: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(Icons.face_2),
              ),
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: CircleAvatar(
                backgroundColor: Colors.yellow,
              ),
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ]),
          const SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 15,
                  ),
                  Text("@Zewodec"),
                  Spacer(),
                  Icon(Icons.menu),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Image.asset(
                "assets/images/post_1.jpg",
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.favorite),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.comment),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.send),
                  Spacer(),
                  Icon(Icons.bookmark),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
