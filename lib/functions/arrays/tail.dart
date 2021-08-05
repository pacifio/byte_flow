/// Gets all but the first element of list.
/// Example
/// ```dart
/// _.tail([1, 2, 3]);
/// // Returns [2, 3]
/// ```
List tail(List list) {
  list.removeAt(0);
  return list;
}
