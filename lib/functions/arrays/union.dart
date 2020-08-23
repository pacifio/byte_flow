/// Creates an array of unique values, in order
union(List<List> arrays) {
  return arrays.fold<Set>(arrays.first.toSet(), (a, b) => a.union(b.toSet()));
}
