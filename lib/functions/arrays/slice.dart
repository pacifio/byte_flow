/// Creates a slice of `array` from `start` up to, but not including, `end`.
/// Example
/// ```dart
/// _.slice([1, 2, 3, 4], 2);
/// // Returns [3, 4]
/// ```
List slice(List array, [int start = 0, int end]) {
  int length = array.length;
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
  List result = new List(length);
  while (++index < length) {
    result[index] = array[index + start];
  }

  return result;
}
