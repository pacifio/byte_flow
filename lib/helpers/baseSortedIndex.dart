/// The base implementation of `sortedIndex`
int baseSortedIndex(List array, dynamic value, [bool retHighest = false]) {
  int low = 0;
  int high = array.length;
  while (low < high) {
    int mid = (low + high) >> 1;
    var computed = array[mid];
    if (computed != null &&
        (retHighest ? (computed <= value) : (computed < value))) {
      low = mid + 1;
    } else {
      high = mid;
    }
  }
  return high;
}
