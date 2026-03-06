String longestPalindrome(String s) {
  if (s.length < 3) {
    return 'none';
  }

  String longest = 'none';

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String sub = s.substring(i, j);
      if (isPalindrome(sub) && (longest == 'none' || sub.length > longest.length)) {
        longest = sub;
      }
    }
  }

  return longest;
}

bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  int left = 0;
  int right = s.length - 1;

  while (left < right) {
    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }

  return true;
}
