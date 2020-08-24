import 'package:byte_flow/helpers/baseSortedIndex.dart';

/// Uses a binary search to determine the lowest index
/// at which value should be inserted into array in order to maintain its sort order.
/// Returns the index at which value should be inserted into array.
/// Example
/// ```dart
/// _.sortedIndex([30, 50], 60);
/// // Returns 2
///
/// _.sortedIndex([30, 50], 40);
/// // Returns 1
///
/// _.sortedIndex([30, 50], 30);
/// // Returns 0
///```
int sortedIndex(List array, dynamic value) {
  return baseSortedIndex(array, value);
}
