/// Creates a slice of `list` from `start` up to, but not including, `end`.
/// Example
/// ```dart
/// _.slice([1, 2, 3, 4], 2);
/// // Returns [3, 4]
/// ```
List slice(List list, [int start = 0, int? end]) {
  int length = list.length;
  if (length <= 0) {
    return [];
  }
  end = end == null ? length : end;
  if (start < 0) {
    start = -start > length ? 0 : (length + start);
  }
  end = end > length ? length : end;
  if (end < 0) {
    end += length;
  }
  length = start > end ? 0 : ((end - start) >> 0);
  start >>= 0;

  int index = -1;
  List result = List.generate(length, (i) => i);
  while (++index < length) {
    result[index] = list[index + start];
  }

  return result;
}
