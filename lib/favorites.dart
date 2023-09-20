import 'package:flutter/material.dart';
import 'package:flutter_first_app/provider/app_state.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if(appState.favorites.isEmpty) {
      return Center(
        child: Text('No favorites yet.')
      );
    }
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You hav ${appState.favorites.length} favorites:'),
        ),
        for( var pair in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
              title: Text(pair.asLowerCase),
          )
      ],
    );
  }
}
