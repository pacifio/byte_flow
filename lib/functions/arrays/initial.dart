import 'package:byte_flow/functions/arrays/slice.dart';

/// Gets all but the last element of array.
/// Example
/// ```dart
/// initial([1, 2, 3]);
/// // Returns [1, 2]
/// ```
List initial(List array) {
  var length = array == null ? 0 : array.length;
  return length != 0 ? slice(array, 0, -1) : [];
}
