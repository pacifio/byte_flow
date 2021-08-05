import 'package:byte_flow/functions/arrays/slice.dart';

/// Creates an list of elements split into groups the length of `size`.
/// If `list` can't be split evenly, the final chunk will be the remaining elements.
/// Example
/// ```dart
/// _.chunk(['a', 'b', 'c', 'd'], 2);
/// // Returns ['a', 'b'],['c', 'd']
///
/// _.chunk(['a', 'b', 'c', 'd'], 3)
/// // Returns ['a', 'b', 'c'],['d']
/// ```

List chunk(List list, [int size = 1]) {
  int index = 0;
  int resIndex = 0;
  List result = List.generate((list.length / size).ceil(), (i) => i);

  while (index < list.length) {
    result[resIndex++] = slice(list, index, (index += size));
  }

  return result;
}
