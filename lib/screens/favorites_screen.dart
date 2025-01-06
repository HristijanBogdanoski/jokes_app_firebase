// FavoritesScreen.dart
import 'package:flutter/material.dart';
import '../models/joke.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Joke> favoriteJokes;

  const FavoritesScreen({required this.favoriteJokes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Jokes'),
      ),
      body: ListView.builder(
        itemCount: favoriteJokes.length,
        itemBuilder: (context, index) {
          final joke = favoriteJokes[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              title: Text(joke.setup),
              subtitle: Text(joke.punchline),
            ),
          );
        },
      ),
    );
  }
}
