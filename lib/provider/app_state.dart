import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  var favorites = <WordPair>[];
  void toggleFavorite() {
    if(favorites.contains(current)) {
      favorites.remove(current);
    } else{
      favorites.add(current);
    }
    notifyListeners();
  }

  var selectedIndex = 0;
  var selectedIndexInAnotherWidget = 0;
  var indexInYetAnotherWidget = 42;
  var optionASelected = false;
  var optionBSelected = false;
  var loadingFromNetwork = false;
}