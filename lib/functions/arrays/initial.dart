import 'package:byte_flow/functions/arrays/slice.dart';

/// Gets all but the last element of list.
/// Example
/// ```dart
/// initial([1, 2, 3]);
/// // Returns [1, 2]
/// ```
List initial(List list) {
  return list.length != 0 ? slice(list, 0, -1) : [];
}
