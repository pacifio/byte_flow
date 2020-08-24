/// Gets all but the first element of array.
/// Example
/// ```dart
/// _.tail([1, 2, 3]);
/// // Returns [2, 3]
/// ```
List tail(List array) {
  array.removeAt(0);
  return array;
}
