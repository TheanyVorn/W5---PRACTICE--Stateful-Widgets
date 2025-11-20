import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Custom buttons")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Button 1 - Blue
              SizedBox(
                width: 300,
                height: 100,
                child: ElevatedButton(
                  onPressed: () => setState(() => isSelected1 = !isSelected1),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected1
                        ? Colors.blue[500]
                        : Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    isSelected1 ? "Selected" : "Not Selected",
                    style: TextStyle(
                      fontSize: 20,
                      color: isSelected1 ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Button 2 - Green
              SizedBox(
                width: 300,
                height: 100,
                child: ElevatedButton(
                  onPressed: () => setState(() => isSelected2 = !isSelected2),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected2
                        ? Colors.green[500]
                        : Colors.green[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    isSelected2 ? "Selected" : "Not Selected",
                    style: TextStyle(
                      fontSize: 20,
                      color: isSelected2 ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Button 3 - Red
              SizedBox(
                width: 300,
                height: 100,
                child: ElevatedButton(
                  onPressed: () => setState(() => isSelected3 = !isSelected3),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected3
                        ? Colors.red[500]
                        : Colors.red[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    isSelected3 ? "Selected" : "Not Selected",
                    style: TextStyle(
                      fontSize: 20,
                      color: isSelected3 ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
