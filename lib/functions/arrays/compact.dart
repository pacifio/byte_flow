/// Creates an list with all falsey values removed. The values `false`, `null`,
/// `0`, `""`, and `NaN` are falsey.
/// Example
/// ```dart
/// _.compact([0, 1, false, 2, '', 3]);
/// // Returns [1, 2, 3]
/// ```
List compact(List list) {
  List result = [];

  list.forEach((value) {
    if (value != 0 && value != "" && value != double.nan && value != false) {
      result.add(value);
    }
  });
  return result;
}
