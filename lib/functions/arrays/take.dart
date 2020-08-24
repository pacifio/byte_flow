/// Creates a slice of array with n elements taken from the beginning.
/// Uses dart's native ```List.take(n)``` method
/// Example
/// ```dart
/// _.take([1, 2, 3], 2);
/// // Returns [1, 2]
/// ```
List take(List array, [int n = 1]) {
  return array.take(n).toList();
}
