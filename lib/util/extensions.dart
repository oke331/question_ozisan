extension WithoutAssets on String {
  String get withoutAssets {
    return replaceFirst(RegExp(r'assets/'), '');
  }
}
