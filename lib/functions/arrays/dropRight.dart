import 'package:byte_flow/functions/arrays/slice.dart';

/// Creates a slice of `array` with `n` elements dropRightped from the beginning.
/// ```dart
/// dropRight([1, 2, 3])
/// // => [1,2]
///
/// dropRight([1, 2, 3], 2)
/// // => [1]
///
/// dropRight([1, 2, 3], 5)
/// // => []
///
/// dropRight([1, 2, 3], 0)
/// // => [1, 2, 3]
///
/// ```
List dropRight(List array, [int n = 1]) {
  n = array.length - n;
  return array.isEmpty ? [] : slice(array, 0, n < 0 ? 0 : n);
}
