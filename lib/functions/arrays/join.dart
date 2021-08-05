/// Converts all elements in list into a string separated by separator.
/// Uses dart's ```List.join()```
/// Example
/// ```dart
/// _.join(['a', 'b', 'c'], '~');
/// // Returns 'a~b~c'
/// ```
String join(List list, [String separator = ',']) {
  return list.join(separator);
}
