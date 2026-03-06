int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int scoreA = 0;
  int scoreB = 0;

  for (var entry in teamA.entries) {
    String shotType = entry.key;
    int shots = entry.value;

    if (shotType == 'Free throws') {
      scoreA += shots;
    } else if (shotType == '2 pointers') {
      scoreA += shots * 2;
    } else if (shotType == '3 pointers') {
      scoreA += shots * 3;
    }
  }

  for (var entry in teamB.entries) {
    String shotType = entry.key;
    int shots = entry.value;

    if (shotType == 'Free throws') {
      scoreB += shots;
    } else if (shotType == '2 pointers') {
      scoreB += shots * 2;
    } else if (shotType == '3 pointers') {
      scoreB += shots * 3;
    }
  }

  if (scoreA > scoreB) {
    return 1;
  } else if (scoreA < scoreB) {
    return 2;
  } else {
    return 0;
  }
}
