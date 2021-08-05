///  Creates an list of values by running each element of `list` thru `iteratee`.
/// The iteratee is invoked with three arguments: (value, index, list).
/// ```dart
/// square(n, index, list) {
///   return n*n;
/// }
/// map([4, 8], square);
/// // Returns [16, 64]
/// ```
List map(List list, Function(dynamic element, int index, List list) iteratee) {
  int index = -1;
  int length = list.length;
  List result = List.generate(length, (i) => i);

  while (++index < length) {
    result[index] = iteratee(list[index], index, list);
  }

  return result;
}
