/// Creates an array of unique values, in order
///
/// Example
/// ```dart
/// _.union([
///  [2],
///  [1, 2]
/// ]);

/// // Returns [2, 1]
///```
union(List<List> arrays) {
  return arrays.fold<Set>(arrays.first.toSet(), (a, b) => a.union(b.toSet()));
}
