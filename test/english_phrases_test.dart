import 'package:english_phrases/english_phrases.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  group('Phrase provider', () {
    test('should get all phrases', () async {
      List<Phrase> phrases = PhraseProvider.all;
      expect(phrases.length, greaterThan(0));
    });

    test('should get phrases by category', () async {
      List<Phrase> phrases =
          PhraseProvider.byCategory(category: PhraseCategory.good_job);
      expect(phrases.length, greaterThan(0));
      expect(phrases[0].categories.contains(PhraseCategory.good_job),
          equals(true));
    });
  });
}
