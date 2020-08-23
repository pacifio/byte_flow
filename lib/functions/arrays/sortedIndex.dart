import 'package:byte_flow/helpers/baseSortedIndex.dart';

/// Uses a binary search to determine the lowest index
/// at which value should be inserted into array in order to maintain its sort order.
/// Returns the index at which value should be inserted into array.
int sortedIndex(List array, dynamic value) {
  return baseSortedIndex(array, value);
}
