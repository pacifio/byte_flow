import 'package:byte_flow/functions/arrays/slice.dart';

/// Creates a slice of `array` with `n` elements dropped from the beginning.
/// ```dart
/// drop([1, 2, 3])
/// // => [2,3]
///
/// drop([1, 2, 3], 2)
/// // => [3]
///
/// drop([1, 2, 3], 5)
/// // => []
///
/// drop([1, 2, 3], 0)
/// // => [1, 2, 3]
///
/// ```
List drop(List array, [int n = 1]) {
  return array.isEmpty ? [] : slice(array, n < 0 ? 0 : n, array.length);
}
