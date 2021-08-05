import 'package:byte_flow/helpers/baseFill.dart';

/// Fills elements of `list` with `value` from `start` up to, but not
/// including, `end`.
/// Example
/// ```dart
/// _.fill(List(3), 4);
/// // Returns [4, 4, 4]
/// ```
List fill(List list, dynamic value, [int start = 0, int? end]) {
  int length = list.length;
  if (length <= 0) {
    return [];
  }
  end = end == null ? length : end;
  return baseFill(list, value, start, end);
}
