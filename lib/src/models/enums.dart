/// Used to get phrases by specified difficalty.
enum PhraseCategory {
  from,
  try_again,
  good_job,
}

extension PhraseCategoryExtension on PhraseCategory {
  String get name {
    switch (this) {
      case PhraseCategory.try_again:
        return 'TRY_AGAIN';
      case PhraseCategory.good_job:
        return 'GOOD_JOB';
      default:
        return null;
    }
  }

  PhraseCategory operator [](String name) {
    switch (name) {
      case 'TRY_AGAIN':
        return PhraseCategory.try_again;
      case 'GOOD_JOB':
        return PhraseCategory.good_job;
      default:
        throw Exception('Unknown category');
    }
  }
}
