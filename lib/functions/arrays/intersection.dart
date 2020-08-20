/// Creates an array of unique values that are included in all given arrays
/// Example
/// ```dart
/// final lists = [
///   [1, 2, 3],
///   [2, 4, 5],
///   [2, 8, 9]
/// ];
/// intersect(lists);
/// // Returns [2]
///
/// ```
intersect(List<List> arrays) {
  return arrays.fold<Set>(
      arrays.first.toSet(), (a, b) => a.intersection(b.toSet()));
}
