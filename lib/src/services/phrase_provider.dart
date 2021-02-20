import 'package:english_phrases/data/phrases_data.dart';
import 'package:english_phrases/english_phrases.dart';
import 'package:english_phrases/src/models/phrase_model.dart';

/// Phrase provider, used to get phrases
/// Phrases are stored in memory and loaded only demand
class PhraseProvider {
  static List<Phrase> _phrases;
  static bool _initialized = false;

  /// Returns all available phrases
  static List<Phrase> get all {
    _validateInitialized();
    return _phrases;
  }

  /// Returns phrase by category, for example PhraseProvider.byCategory(PhraseCategory.good_job) 
  static List<Phrase> byCategory({PhraseCategory category}) {
    _validateInitialized();
    return List<Phrase>.from(
      _phrases.where((element) => element.categories.contains(category)),
    );
  }

  static _validateInitialized() {
    if (!_initialized) {
      final phraseRespository = loadPhrases();
      _phrases = List<Phrase>.from(phraseRespository['items'].map(
        (item) => Phrase.fromMap(item),
      ));
      _initialized = true;
    }
  }
}
