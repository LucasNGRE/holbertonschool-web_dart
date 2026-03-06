String longestUniqueSubstring(String str) {
  if (str.isEmpty) {
    return '';
  }

  final Map<String, int> lastSeen = {};
  int start = 0;
  int bestStart = 0;
  int bestLength = 0;

  for (int end = 0; end < str.length; end++) {
    final String char = str[end];

    if (lastSeen.containsKey(char) && lastSeen[char]! >= start) {
      start = lastSeen[char]! + 1;
    }

    lastSeen[char] = end;

    final int currentLength = end - start + 1;
    if (currentLength > bestLength) {
      bestLength = currentLength;
      bestStart = start;
    }
  }

  return str.substring(bestStart, bestStart + bestLength);
}
