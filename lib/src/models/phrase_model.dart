import 'dart:convert';

import 'package:english_phrases/src/models/enums.dart';

/// Represents a phrase with text and a list of categories
class Phrase {
  final String text;
  final List<PhraseCategory> categories;

  Phrase({
    this.text,
    this.categories,
  });

  /// Creates Phrase from Map
  factory Phrase.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    final categories = List<String>.from(map['categories']);
    return Phrase(
      text: map['text'],
      categories: List<PhraseCategory>.from(
        categories.map((category) => PhraseCategory.from[category]),
      ),
    );
  }

  ///  Creates Phrase from json  string
  factory Phrase.fromJson(String source) => Phrase.fromMap(json.decode(source));
}
