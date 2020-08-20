/// Creates an array with all falsey values removed. The values `false`, `null`,
/// * `0`, `""`, and `NaN` are falsey.
List compact(List array) {
  List result = [];

  if (array == null) {
    return result;
  }

  array.forEach((value) {
    if (value != 0 && value != "" && value != double.nan && value != false) {
      result.add(value);
    }
  });
  return result;
}
