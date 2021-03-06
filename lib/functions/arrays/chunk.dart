import 'package:byte_flow/functions/arrays/slice.dart';

/// Creates an array of elements split into groups the length of `size`.
/// If `array` can't be split evenly, the final chunk will be the remaining elements.
/// Example
/// ```dart
/// _.chunk(['a', 'b', 'c', 'd'], 2);
/// // Returns ['a', 'b'],['c', 'd']
///
/// _.chunk(['a', 'b', 'c', 'd'], 3)
/// // Returns ['a', 'b', 'c'],['d']
/// ```

List chunk(List array, [int size = 1]) {
  if (array.length == null || size < 1) {
    return [];
  }

  int index = 0;
  int resIndex = 0;
  List result = new List((array.length / size).ceil());

  while (index < array.length) {
    result[resIndex++] = slice(array, index, (index += size));
  }

  return result;
}
