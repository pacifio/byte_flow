import 'package:byte_flow/functions/arrays/slice.dart';

/// Creates a slice of `list` with `n` elements dropRightped from the beginning.
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
List dropRight(List list, [int n = 1]) {
  n = list.length - n;
  return list.isEmpty ? [] : slice(list, 0, n < 0 ? 0 : n);
}
