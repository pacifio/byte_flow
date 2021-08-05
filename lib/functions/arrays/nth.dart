/// Gets the element at index `n` of `list`. If `n` is negative, the nth
/// element from the end is returned.
/// Example
/// ```dart
/// _.nth(['a', 'b', 'c', 'd'], 2);
/// // Returns 'c'

/// _.nth(['a', 'b', 'c', 'd'], -1);
/// // Returns 'd'
///```
dynamic nth(List list, int n) {
  if (list.length != 0) {
    n += n < 0 ? list.length : 0;
    try {
      return list[n];
    } on RangeError catch (_) {
      return null;
    }
  } else {
    return null;
  }
}
