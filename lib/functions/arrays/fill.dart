import 'package:byte_flow/helpers/baseFill.dart';

/// Fills elements of `array` with `value` from `start` up to, but not
/// including, `end`.
/// Example
/// ```dart
/// _.fill(List(3), 4);
/// // Returns [4, 4, 4]
/// ```
List fill(List array, dynamic value, [int start = 0, int end]) {
  int length = array.length;
  if (length <= 0) {
    return [];
  }
  end = end == null ? length : end;
  return baseFill(array, value, start, end);
}
