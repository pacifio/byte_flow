/// Converts all elements in array into a string separated by separator.
/// Uses dart's ```List.join()```
/// Example
/// ```dart
/// _.join(['a', 'b', 'c'], '~');
/// // Returns 'a~b~c'
/// ```
String join(List array, [String separator = ',']) {
  return array.join(separator);
}
