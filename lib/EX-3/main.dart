import 'package:flutter/material.dart';

List<String> images = [
  "assets/images/bird.jpg",
  "assets/images/bird2.jpg",
  "assets/images/insect.jpg",
  "assets/images/girl.jpg",
  "assets/images/man.jpg",
];

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text('Image Viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed: () => setState(() {
                currentIndex = currentIndex > 0
                    ? currentIndex - 1
                    : images.length - 1;
              }),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 80, 0),
              child: IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next image',
                onPressed: () => setState(() {
                  currentIndex = currentIndex < images.length - 1
                      ? currentIndex + 1
                      : 0;
                }),
              ),
            ),
          ],
        ),
        body: Center(child: Image.asset(images[currentIndex])),
      ),
    );
  }
}
