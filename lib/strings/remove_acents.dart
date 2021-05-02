extension RemoveAccents on String {
  static const baseAcents =
      'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
  static const basePlain =
      'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz';

  String get removAccents => splitMapJoin('',
      onNonMatch: (char) => char.isNotEmpty && baseAcents.contains(char)
          ? basePlain[baseAcents.indexOf(char)]
          : char);
}
