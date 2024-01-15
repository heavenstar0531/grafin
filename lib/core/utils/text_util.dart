class TextUtil {
  TextUtil._();

  static String addLineBreaks({
    required String text,
    required int maxHorizontalWord,
  }) {
    List<String> words = text.split(' ');
    String res = '';
    for (var i = 0; i < words.length; i++) {
      res += '${words[i]} ';
      if (i % maxHorizontalWord == 0 && i != 0) res += '\n';
    }
    return res;
  }
}
