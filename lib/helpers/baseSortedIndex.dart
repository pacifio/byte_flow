/// The base implementation of `sortedIndex`
int baseSortedIndex(List list, dynamic value, [bool retHighest = false]) {
  int low = 0;
  int high = list.length;
  while (low < high) {
    int mid = (low + high) >> 1;
    var computed = list[mid];
    if (computed != null &&
        (retHighest ? (computed <= value) : (computed < value))) {
      low = mid + 1;
    } else {
      high = mid;
    }
  }
  return high;
}
