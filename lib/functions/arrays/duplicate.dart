/// Find duplicate items in an array
List duplicate(List array) {
  array.sort();
  final result = [];
  for (int i = 0; i < array.length - 1; i++) {
    if (array[i + 1] == array[i]) {
      result.add(array[i]);
    }
  }

  return result;
}
