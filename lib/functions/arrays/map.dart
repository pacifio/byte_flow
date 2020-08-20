///  Creates an array of values by running each element of `array` thru `iteratee`.
/// The iteratee is invoked with three arguments: (value, index, array).
/// ```dart
/// square(n, index, array) {
///   return n*n;
/// }
/// map([4, 8], square);
/// // Returns [16, 64]
/// ```
List map(
    List array, Function(dynamic element, int index, List array) iteratee) {
  int index = -1;
  int length = array.length;
  List result = List(length);

  while (++index < length) {
    result[index] = iteratee(array[index], index, array);
  }

  return result;
}
