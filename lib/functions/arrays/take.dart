/// Creates a slice of list with n elements taken from the beginning.
/// Uses dart's native ```List.take(n)``` method
/// Example
/// ```dart
/// _.take([1, 2, 3], 2);
/// // Returns [1, 2]
/// ```
List take(List list, [int n = 1]) {
  return list.take(n).toList();
}
