/// Find duplicate items in an list
List duplicate(List list) {
  list.sort();
  final result = [];
  for (int i = 0; i < list.length - 1; i++) {
    if (list[i + 1] == list[i]) {
      result.add(list[i]);
    }
  }

  return result;
}
