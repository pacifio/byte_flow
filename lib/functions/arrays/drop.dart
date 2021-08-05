import 'package:byte_flow/functions/arrays/slice.dart';

/// Creates a slice of `list` with `n` elements dropped from the beginning.
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
List drop(List list, [int n = 1]) {
  return list.isEmpty ? [] : slice(list, n < 0 ? 0 : n, list.length);
}
