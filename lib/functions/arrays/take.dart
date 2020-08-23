/// Creates a slice of array with n elements taken from the beginning.
/// Uses dart's native ```List.take(n)``` method
List take(List array, [int n = 1]) {
  return array.take(n).toList();
}
