import 'package:byte_flow/functions/arrays/slice.dart';

/// Creates a slice of array with n elements taken from the end.
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
List takeRight(List array, [int n = 1]) {
  if (array.isEmpty) {
    return [];
  }

  n = array.length - n;
  return slice(array, n < 0 ? 0 : n, array.length);
}
