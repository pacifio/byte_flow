import 'package:byte_flow/functions/arrays/slice.dart';

/// Creates a slice of list with n elements taken from the end.
/// Example
/// ```dart
/// takeRight([1, 2, 3])
/// // => [3]
///
/// takeRight([1, 2, 3], 2)
/// // => [2, 3]
///
/// takeRight([1, 2, 3], 5)
/// // => [1, 2, 3]
///
/// takeRight([1, 2, 3], 0)
/// // => []
/// ```
List takeRight(List list, [int n = 1]) {
  if (list.isEmpty) {
    return [];
  }

  n = list.length - n;
  return slice(list, n < 0 ? 0 : n, list.length);
}
