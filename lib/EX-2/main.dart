import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          toolbarHeight: 65,
          title: const Text("Favorite cards", style: TextStyle(fontSize: 24)),
        ),
        body: const Column(
          children: [FavoriteCard(), FavoriteCard(), FavoriteCard()],
        ),
      ),
    );
  }
}

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({super.key});

  @override
  State<FavoriteCard> createState() => FavoriteCardState();
}

class FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
      ),
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Title',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text('description', style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          IconButton(
            onPressed: () => setState(() => isFavorite = !isFavorite),
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
