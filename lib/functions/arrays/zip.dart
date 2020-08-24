/// Zips two arrays
/// [Credit](https://stackoverflow.com/questions/22015684/how-do-i-zip-two-arrays-in-javascript)
///
/// Example
/// ```dart
/// _.zip(['a', 'b', 'c'], [1, 2, 3]);
/// // Returns [['a', 1],['b', 2],['c', 3]]
/// ```
List zip(List a, List b) {
  return a.map((e) {
    final int index = a.indexOf(e);
    return [e, b[index]];
  }).toList();
}
