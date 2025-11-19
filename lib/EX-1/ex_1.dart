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

  // Helper method to build a button
  Widget buildButton(
    bool isSelected,
    VoidCallback onPress,
    MaterialColor color,
  ) {
    return SizedBox(
      width: 300,
      height: 100,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? color[500] : color[50],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          isSelected ? "Selected" : "Not Selected",
          style: TextStyle(
            fontSize: 20,
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Custom buttons")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton(
                isSelected1,
                () => setState(() => isSelected1 = !isSelected1),
                Colors.blue,
              ),
              const SizedBox(height: 20),
              buildButton(
                isSelected2,
                () => setState(() => isSelected2 = !isSelected2),
                Colors.green,
              ),
              const SizedBox(height: 20),
              buildButton(
                isSelected3,
                () => setState(() => isSelected3 = !isSelected3),
                Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
