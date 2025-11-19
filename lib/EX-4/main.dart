import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[100],
        appBar: AppBar(
          backgroundColor: Colors.pink[400],
          title: const Text('Score Bar'),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(180, 20, 180, 20),
          child: Column(
            children: [
              ScoreCard(title: 'My score in Flutter'),
              const SizedBox(height: 20),
              ScoreCard(title: 'My score in Dart'),
              const SizedBox(height: 20),
              ScoreCard(title: 'My score in React'),
            ],
          ),
        ),
      ),
    );
  }
}

class ScoreCard extends StatefulWidget {
  final String title;

  const ScoreCard({super.key, required this.title});

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  int score = 10;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: score > 0 ? () => setState(() => score--) : null,
                ),
                const SizedBox(width: 100),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: score < 10 ? () => setState(() => score++) : null,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: LinearProgressIndicator(
                  value: score / 10,
                  minHeight: 30,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(
                    score <= 3
                        ? Colors.red
                        : score <= 7
                        ? Colors.orange
                        : Colors.green,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
