/// Flatten a list
/// ```dart
/// List dataTypes = [[1, 2, 3], ['a', 'b', 'c'], [true, false, true]];
/// flatten(dataTypes)
/// // Returns [1, 2, 3, 'a', 'b', 'c', true, false, true]
/// ```
/// Credit goes to [Justin Fagnani](https://stackoverflow.com/users/192153/justin-fagnani)
List flatten(List list) {
  return list.expand((element) => element).toList();
}
